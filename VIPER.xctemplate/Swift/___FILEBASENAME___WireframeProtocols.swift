//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

// VIPER Module Constants
// Uncomment to utilize a navigation contoller from storyboard
//let k___FILEBASENAMEASIDENTIFIER___NavigationControllerIdentifier = "___FILEBASENAMEASIDENTIFIER___NavigationController"
let k___FILEBASENAMEASIDENTIFIER___StoryboardIdentifier = "___FILEBASENAMEASIDENTIFIER___"
let k___FILEBASENAMEASIDENTIFIER___ViewIdentifier = "___FILEBASENAMEASIDENTIFIER___View"

// Interface Abstraction for working with the VIPER Module
protocol ___FILEBASENAMEASIDENTIFIER___ModuleInterface : class {
        var delegate: ___FILEBASENAMEASIDENTIFIER___Delegate? { get set }
}

// VIPER Interface for communication from Presenter -> Wireframe
protocol ___FILEBASENAMEASIDENTIFIER___PresenterToWireframeInterface : class {
        
}
