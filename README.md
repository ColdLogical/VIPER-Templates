# Xcode VIPER Templates
[The VIPER-Templates Wiki has tons of information](../../wiki) to get you started.

VIPER is a 6 tier architecture that abstracts module tasks into each tier such that everything has a single responsibility. Its conforms to SOLID design principles and is an implementation of Clean Architecture concepts.

These templates are written in Swift for use with Xcode.

Head over to the [VIPER-Templates Wiki](../../wiki) for some in-depth information on VIPER and using these templates.

[Did I mention there is a VIPER-Templates Wiki](../../wiki), you should check it out!

# TODO

- Keep it sexy
- Write "Creating a VIPER Stack"
- Write script to generate README from wiki pages (currently manual process)

# Contents

* [VIPER](../../wiki/VIPER) - An overview of VIPER
* (NOT IMPLEMENTED) [Creating a VIPER Stack](../../wiki/Creating-a-VIPER-Stack) - step by step process of creating an example VIPER stack
* The VIPER Layers Explained
  * [Wireframe](../../wiki/Wireframe) - instantiation and navigation
  * [Presenter](../../wiki/Presenter) - business logic
  * [View](../../wiki/View) - user interface
  * [Interactor](../../wiki/Interactor) - data logic
  * [Services](../../wiki/Services) - web endpoint interactions
  * [Entities](../../wiki/Entities) - data objects
* [Installing](../../wiki/Installing) - how to install the templates in less than a minute
* [Installation Troubleshooting](../../wiki/Installation-Troubleshooting) - a few possible problems and solutions with installing the templates
* [Updating](../../wiki/Updating) - how to update with new changes to the templates
* [Using the Templates](../../wiki/Using-the-Templates) - how to use the templates to create your VIPER stacks
* [Organizing the Stack](../../wiki/Organizing-the-Stack) - one way of organizing the VIPER files in an Xcode project
* [What are These?](../../wiki/What-are-These?) - a general description of the files created by the templates
* [Mocking Made Easy](../../wiki/Mocking-Made-Easy) - short guide showing you how to use the mock files for testing
* [Alternative Resources](../../wiki/Alternative-Resources) - some other perspectives and implementations of VIPER

# VIPER

iOS is still a very young technology and as you may have found out an MVC architecture is anything but useful for long running applications. The fuboTV iOS application is adopting the VIPER architecture throughout.

## What VIPER Is
VIPER is a 6 tier architecture that abstracts module tasks into each tier such that everything has a single responsibility. Its conforms to SOLID design principles and is an implementation of Clean Architecture concepts.

Main Goals Of VIPER:
  - Make code easy to iterate on
  - Make projects collaboration-friendly
  - Create reusable modules with separated concerns
  - Make code easy to test

A very simplistic representation would be:
  - [Wireframe (Router) - instantiation and navigation](../../wiki/Wireframe)
  - [Presenter - business logic](../../wiki/Presenter)
  - [Interactor - data logic](../../wiki/Interactor)
  - [View - user interface](../../wiki/View)
  - [Service - retrieves entities](../../wiki/Service)
  - [Entity - data object](../../wiki/Entities)

![A VIPER Stack](../../wiki/images/viper_arch_picture.png)

Most connections are two way and each direction is abstracted into an interface. For example:
  - Wireframe talks to the Presenter through the WireframeToPresenterInterface
  - Presenter talks to the Wireframe through the PresenterToWireframeInterface

The abstracted interfaces provide us with a way to easily conform to the interface (Goal 2 & 3). This lets us easily replace objects by creating new objects that only need to implement the interfaces (Goal 1 and 3). This also lets us create mock objects that can easily be injected for testing (Goal 4).

## What VIPER Is NOT
VIPER is not the end all of architectures. It solves many problems that arise from MVC, but sometimes the technology of our IDE's doesn't mix well (ex: storyboards and segues). If you see a way to improve VIPER, please be vocal, we want it to improve!

# Wireframe
The wireframe is responsible for instantiation and navigation. It is the interface into the VIPER stack. When creating a VIPER stack, you instantiate the wireframe and it instantiates all the other layers and connects them properly. A wireframe constructor could look like this:

```swift
lazy var moduleInteractor = Interactor()
lazy var modulePresenter = Presenter()
lazy var moduleView = View()

init() {
    super.init()

    let i = moduleInteractor
    let p = modulePresenter
    let v = moduleView

    i.presenter = p

    p.interactor = i
    p.view = v
    p.wireframe = self

    v.presenter = p
}
```
The wireframe maintains strong references to module layers so they do not get deallocated. It initializes all of them, and connects each one to the other, correctly.

With navigation, its specifically navigation to the stack or away from the stack. Lets say you want to display a login stack from the home stack of the application.
```swift
//HomeWireframe.swift
lazy loginModule: Login = LoginWireframe()
func presentLogin() {
    loginModule.present(onViewController: moduleView)
}

//LoginWireframe.swift
func present(onViewController viewController: UIViewController) {
    viewController.present(moduleView, animated: true)
    // Here, you could also notify the presenter that the stack 
    //    began presenting, but for login, there is no initial setup 
    //    for this to be needed since the text fields will be empty
    // presenter.beganPresenting()
}
```
The home wireframe has been told to present the login stack (from the `HomePresenter`). This function calls the login's wireframe, which implements the module's interface protocol, presentation method. The login's wireframe implements the presentation method by telling the view controller that is passed in to present the login module's view controller.

# Presenter

The `Presenter` is where business logic lives. It is what drives all the other layers, making decisions based on events that happen in the other layers. Think of the `Presenter` like a manager, it knows what needs to happen to get certain task done, it knows who is best to do the job, and it tells those in its employ to do them, but doesn`t do any of the heavy lifting itself.

It has outlets to the other components of the VIPER stack, something like this:
```swift
weak var delegate: Delegate?
weak var interactor: PresenterToInteractorInterface!
weak var view: PresenterToViewInterface!
weak var wireframe: PresenterToWireframeInterface!
var moduleWireframe: Login {
     get {
         return self.wireframe as! Login
     }
}
```

#### Communicating with the Interactor
Lets take a look at a typical flow. Lets say your user wants to login to the application, so they have entered their username and password in the `View`, and now they tap the `Login` button.
```swift
//View.swift
@IBAction func loginTapped(sender: AnyObject) {
    let username = usernameTextField.text
    let password = passwordTextField.text
    presenter.userTappedLogin(withUsername: username, andPassword: password)
}

//Presenter.swift
func userTappedLogin(withUsername username: String, andPassword password: String) {
     interactor.login(withUsername: username, andPassword: password)
}
```
The [[View]] will tell the `Presenter` of the user event, and pass the related information. When the `Presenter` gets it, it will tell the [[Interactor]] that it needs to call a service to login the user with the username and password the user entered.

#### Communicating with the Delegate
Lets say the call to the login service succeeded, and the module now needs to tell the `Delegate` the user has been logged in.
```swift
//Interactor.swift
func loggedIn(withUser user: User) {
    presenter.loginSucceeded()
}

//Presenter.swift
func loginSucceeded() {
    delegate?.loggedIn(login: moduleWireframe)
}
```
The [[Interactor]] will tell the `Presenter` of the success, and the presenter decides to tell the `Delegate` that login succeeded.

#### Communicating with the View
What if the login failed? Maybe the username doesn't exist, or the password was incorrect.
```swift
//Interactor.swift
func failedLogin(withError error: Error) {
    presenter.loginFailed(withError: error)
}

//Presenter.swift
func loginFailed(withError error: Error) {
    view.displayLoginError(withDescription: error.description)
}
```
The [[Interactor]] will tell the `Presenter` that login failed, and pass the error along. The presenter decides to tell the [[View]] to display a login error with the description received from backend. The [[View]] can then decide how it displays said error, maybe with an alert, or just a label, what ever it wants to do.

#### Communicating with the Wireframe
Maybe the user forgot their password and the reset password module needs to be presented.
```swift
//View.swift
@IBAction func resetPasswordTapped(sender: AnyObject) {
    presenter.userTappedResetPassword()
}

//Presenter.swift
func userTappedResetPassword() {
    wireframe.presentResetPassword()
}
```
Here, the user event is reported from the [[View]] to the `Presenter`, since there is navigation away from the login stack, to the reset password stack, the [[Wireframe]] needs to be notified. The `Presenter` tells the [[Wireframe]] to present that module, however it needs to.
