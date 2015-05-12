//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

#import <UIKit/UIKit.h>

// VIPER Protocols
#import "___FILEBASENAMEASIDENTIFIER___ViewProtocols.h"
#import "___FILEBASENAMEASIDENTIFIER___PresenterProtocols.h"

@interface ___FILEBASENAMEASIDENTIFIER___View: UIViewController <___FILEBASENAMEASIDENTIFIER___ViewInterface>

// VIPER Stack
@property (nonatomic, weak) id<___FILEBASENAMEASIDENTIFIER___PresenterInterface> presenter;

// Outlets

// Instance Variables

@end