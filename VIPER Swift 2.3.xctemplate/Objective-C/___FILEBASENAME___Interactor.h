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

@interface ___FILEBASENAMEASIDENTIFIER___Interactor : NSObject <
        ___FILEBASENAMEASIDENTIFIER___PresenterToInteractorInterface
        >

// VIPER Stack
@property (nonatomic, weak) id<___FILEBASENAMEASIDENTIFIER___InteractorToPresenterInterface> presenter;

// Instance Variables

@end