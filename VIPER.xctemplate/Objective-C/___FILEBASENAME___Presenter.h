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

@interface ___FILEBASENAMEASIDENTIFIER___Presenter : NSObject <
        ___FILEBASENAMEASIDENTIFIER___InteractorToPresenterInterface,
        ___FILEBASENAMEASIDENTIFIER___ViewToPresenterInterface,
        ___FILEBASENAMEASIDENTIFIER___WireframeToPresenterInterface
        >

// VIPER References
@property (nonatomic, weak) id<___FILEBASENAMEASIDENTIFIER___PresenterToInteractorInterface> interactor;
@property (nonatomic, weak) id<___FILEBASENAMEASIDENTIFIER___PresenterToViewInterface> view;
@property (nonatomic, weak) id<___FILEBASENAMEASIDENTIFIER___PresenterToWireframeInterface> wireframe;

// Instance Variables

@end