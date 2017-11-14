# Xcode VIPER Templates
[The VIPER-Templates Wiki has tons of information](https://github.com/ColdLogical/VIPER-Templates/wiki) to get you started.

VIPER is a 6 tier architecture that abstracts module tasks into each tier such that everything has a single responsibility. Its conforms to SOLID design principles and is an implementation of Clean Architecture concepts.

These templates are written in Swift for use with Xcode.

Head over to the [VIPER-Templates Wiki](https://github.com/ColdLogical/VIPER-Templates/wiki) for some in-depth information on VIPER and using these templates.

[Did I mention there is a VIPER-Templates Wiki](https://github.com/ColdLogical/VIPER-Templates/wiki), you should check it out!

# TODO

- Keep it sexy

# Contents

* [[VIPER]] - An overview of VIPER
* [[Creating a VIPER Stack]] - step by step process of creating an example VIPER stack
* The VIPER Layers Explained
  * [[Wireframe]] - instantiation and navigation
  * [[Presenter]] - business logic
  * [[View]] - user interface
  * [[Interactor]] - data logic
  * [[Services]] - web endpoint interactions
  * [[Entities]] - data objects
* [[Installing]] - how to install the templates in less than a minute
* [[Installation Troubleshooting]] - a few possible problems and solutions with installing the templates
* [[Updating]] - how to update with new changes to the templates
* [[Using the Templates]] - how to use the templates to create your VIPER stacks
* [[Organizing the Stack]] - one way of organizing the VIPER files in an Xcode project
* [[What are These?]] - a general description of the files created by the templates
* [[Mocking Made Easy]] - short guide showing you how to use the mock files for testing
* [[Alternative Resources]] - some other perspectives and implementations of VIPER

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
  - [Wireframe (Router) - instantiation and navigation](Wireframe)
  - [Presenter - business logic](Presenter)
  - [Interactor - data logic](Interactor)
  - [View - user interface](View)
  - [Service - retrieves entities](Service)
  - [Entity - data object](Entities)

![A VIPER Stack](images/viper_arch_picture.png)

Most connections are two way and each direction is abstracted into an interface. For example:
  - Wireframe talks to the Presenter through the WireframeToPresenterInterface
  - Presenter talks to the Wireframe through the PresenterToWireframeInterface

The abstracted interfaces provide us with a way to easily conform to the interface (Goal 2 & 3). This lets us easily replace objects by creating new objects that only need to implement the interfaces (Goal 1 and 3). This also lets us create mock objects that can easily be injected for testing (Goal 4).

## What VIPER Is NOT
VIPER is not the end all of architectures. It solves many problems that arise from MVC, but sometimes the technology of our IDE's doesn't mix well (ex: storyboards and segues). If you see a way to improve VIPER, please be vocal, we want it to improve!
