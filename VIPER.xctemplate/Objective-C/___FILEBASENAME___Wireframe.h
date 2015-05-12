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

static NSString *k___FILEBASENAMEASIDENTIFIER___Storyboard = @"___FILEBASENAMEASIDENTIFIER___Storyboard";
static NSString *k___FILEBASENAMEASIDENTIFIER___ViewIdentifier = @"___FILEBASENAMEASIDENTIFIER___ViewIdentifier";

// VIPER Forward Declarations
@class ___FILEBASENAMEASIDENTIFIER___Interactor;
@class ___FILEBASENAMEASIDENTIFIER___Presenter;
@class ___FILEBASENAMEASIDENTIFIER___View;

@interface ___FILEBASENAMEASIDENTIFIER___Wireframe : NSObject <___FILEBASENAMEASIDENTIFIER___WireframeInterface>

// VIPER Stack
@property (nonatomic, strong) ___FILEBASENAMEASIDENTIFIER___Interactor *interactor;
@property (nonatomic, strong) ___FILEBASENAMEASIDENTIFIER___Presenter *presenter;
@property (nonatomic, strong) ___FILEBASENAMEASIDENTIFIER___View *view;

// Instance Variables

@property (nonatomic, weak) id<___FILEBASENAMEASIDENTIFIER___Delegate> delegate;

// Instance Methods

@end