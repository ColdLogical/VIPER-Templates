//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

#import <Foundation/Foundation.h>

// VIPER Protocols
#import "___FILEBASENAMEASIDENTIFIER___InteractorProtocols.h"
#import "___FILEBASENAMEASIDENTIFIER___PresenterProtocols.h"
#import "___FILEBASENAMEASIDENTIFIER___ViewProtocols.h"
#import "___FILEBASENAMEASIDENTIFIER___WireframeProtocols.h"

@interface ___FILEBASENAMEASIDENTIFIER___Presenter : NSObject <___FILEBASENAMEASIDENTIFIER___InteractorOutput, ___FILEBASENAMEASIDENTIFIER___Routing, ___FILEBASENAMEASIDENTIFIER___PresenterInterface>

// VIPER References
@property (nonatomic, weak) id<___FILEBASENAMEASIDENTIFIER___InteractorInput> interactor;
@property (nonatomic, weak) id<___FILEBASENAMEASIDENTIFIER___ViewInterface> view;
@property (nonatomic, weak) id<___FILEBASENAMEASIDENTIFIER___WireframeInterface> wireframe;

// Instance Variables

@end