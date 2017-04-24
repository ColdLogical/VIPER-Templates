# Installing

Here is a short video showing you how to install these templates:

[![VIPER - Installing](http://imgur.com/K6BZUHl.png)](https://www.youtube.com/watch?v=RLrOUUecjGI "VIPER - Installing")

1. Clone the VIPERTemplates repository
1. Run the install script (double click)
  - This creates a symbolic link in the /Applications/Xcode directory to the templates
  - Note: if your Xcode is not installed in the default location, then you will need to change this path

# VIPER
VIPER is a 6 tier architecture that abstracts module tasks into each tier such that everything has a single responsibility. Its conforms to SOLID design principles and is an implementation of Clean Architecture concepts.

Head over to the [VIPERTemplates Wiki](https://github.com/ColdLogical/VIPERTemplates/wiki) for some in-depth information

# Updating
1. Pull the repository changes
  - `git pull`
    - Since we created a symbolic link above, updating the repository changes the templates in xcode without needing to do any other steps.

*Note: When Xcode updates, it replaces the template folder. All you need to do is run the install script again, and the templates will be available.*

# What Do the VIPERTemplates Create?
These templates create fully configured, and tested, base VIPER stacks in either Swift 2.3 or 3.0. There is also the ability to choose between XCTest and Quick & Nimble unit tests.

### VIPER Template

- `Interactor`
- `InteractorProtocols` - Presenter->Interactor protocol
- `Presenter`
- `PresenterProtocols` - Delegate, Interactor->Presenter, View->Presenter, Wireframe->Presenter protocols
- `View`
- `ViewProtocols` - Navigation and Presenter->View protocols
- `Wireframe`
- `WireframeProtocols` - Module and Presenter->Wireframe protocols

#### VIPER Tests Template

- `DelegateMock` - mocked interface for the stacks delegate
- `InteractorTests`
- `InteractorToPresenterInterfaceMock`
- `PresenterTests`
- `PresenterToInteractorInterfaceMock`
- `PresenterToViewInterfaceMock`
- `ViewTests`
- `ViewToPresenterInterfaceMock`
- `WireframeInterfacesMock` - mocks both the module interface and the PresenterToWireframeInterface since these objects need to be the same internally
- `WireframeTests`
- `WireframeToPresenterInterfaceMock`

# TODO

- Keep it sexy
