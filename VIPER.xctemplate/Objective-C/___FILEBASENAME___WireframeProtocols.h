//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

// Forward Class Declarations

// VIPER Module Constants
// Uncomment to utilize a navigation contoller from storyboard
//static NSString *k___FILEBASENAMEASIDENTIFIER___NavigationControllerIdentifier = @"___FILEBASENAMEASIDENTIFIER___NavigationController";
static NSString *k___FILEBASENAMEASIDENTIFIER___Storyboard = @"___FILEBASENAMEASIDENTIFIER___";
static NSString *k___FILEBASENAMEASIDENTIFIER___ViewIdentifier = @"___FILEBASENAMEASIDENTIFIER___View";

// Interface Abstraction for working with the VIPER Module
@protocol ___FILEBASENAMEASIDENTIFIER___ModuleInterface <NSObject> 

-(id)delegate;
-(void)setDelegate:(id<___FILEBASENAMEASIDENTIFIER___Delegate>)newDelegate;

@end

// VIPER Interface for communication from Presenter -> Wireframe
@protocol ___FILEBASENAMEASIDENTIFIER___PresenterToWireframeInterface <NSObject>

@end
