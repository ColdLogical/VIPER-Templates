//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

#import <Foundation/Foundation.h>

// VIPER Protocols
#import "___FILEBASENAMEASIDENTIFIER___PresenterProtocols.h"
#import "___FILEBASENAMEASIDENTIFIER___WireframeProtocols.h"

// VIPER Forward Declarations
@class ___FILEBASENAMEASIDENTIFIER___Interactor;
@class ___FILEBASENAMEASIDENTIFIER___Presenter;
@class ___FILEBASENAMEASIDENTIFIER___View;

@interface ___FILEBASENAMEASIDENTIFIER___Wireframe : NSObject <___FILEBASENAMEASIDENTIFIER___WireframeInterface>

// VIPER Stack
@property (nonatomic, strong) ___FILEBASENAMEASIDENTIFIER___Interactor *moduleInteractor;
@property (nonatomic, strong) ___FILEBASENAMEASIDENTIFIER___Presenter *modulePresenter;
@property (nonatomic, strong) ___FILEBASENAMEASIDENTIFIER___View *moduleView;
@property (nonatomic, weak) id<___FILEBASENAMEASIDENTIFIER___Routing> presenter;
// Uncomment to utilize a navigation controller from storyboard
/*
@property (nonatomic, strong) UINavigationController *navigationController;
 */

// Instance Variables
@property (nonatomic, weak) id<___FILEBASENAMEASIDENTIFIER___Delegate> delegate;

// Instance Methods

@end