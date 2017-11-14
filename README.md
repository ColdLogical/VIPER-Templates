# Xcode VIPER Templates
[The VIPER-Templates Wiki has tons of information](../../wiki) to get you started.

VIPER is a 6 tier architecture that abstracts module tasks into each tier such that everything has a single responsibility. Its conforms to SOLID design principles and is an implementation of Clean Architecture concepts.

These templates are written in Swift for use with Xcode.

Head over to the [VIPER-Templates Wiki](../../wiki) for some in-depth information on VIPER and using these templates.

[Did I mention there is a VIPER-Templates Wiki](../../wiki), you should check it out!

# TODO

- Keep it sexy

# Contents

* [VIPER](../../wiki/VIPER) - An overview of VIPER
* [Creating a VIPER Stack](../../wiki/Creating-a-VIPER-Stack) - step by step process of creating an example VIPER stack
* The VIPER Layers Explained
  * [Wireframe](../../wiki/Wireframe) - instantiation and navigation
  * [Presenter](../../wiki/Presenter) - business logic
  * [View](../../wiki/View) - user interface
  * [Interactor](../../wiki/Interactor) - data logic
  * [Services](../../wiki/Services) - web endpoint interactions
  * [Entities](../../wiki/Entities) - data objects
* [Installing](../../wiki/Installing) - how to install the templates in less than a minute
* [Installation Troubleshooting](../../wiki/Installation Troubleshooting) - a few possible problems and solutions with installing the templates
* [Updating](../../wiki/Updating) - how to update with new changes to the templates
* [Using the Templates](../../wiki/Using the Templates) - how to use the templates to create your VIPER stacks
* [Organizing the Stack](../../wiki/Organizing the Stack) - one way of organizing the VIPER files in an Xcode project
* [What are These?](../../wiki/What are These?) - a general description of the files created by the templates
* [Mocking Made Easy](../../wiki/Mocking Made Easy) - short guide showing you how to use the mock files for testing
* [Alternative Resources](../../wiki/Alternative Resources) - some other perspectives and implementations of VIPER

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
