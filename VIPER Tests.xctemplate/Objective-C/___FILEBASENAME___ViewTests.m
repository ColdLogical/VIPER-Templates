//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>

#import "___FILEBASENAMEASIDENTIFIER___View.h"

#import "___FILEBASENAMEASIDENTIFIER___Wireframe.h"
#import "___FILEBASENAMEASIDENTIFIER___ViewProtocols.h"

@interface ___FILEBASENAMEASIDENTIFIER___ViewTests : XCTestCase <___FILEBASENAMEASIDENTIFIER___PresenterInterface>

@property (nonatomic, strong) XCTestExpectation *expectation;
@property (nonatomic, strong) ___FILEBASENAMEASIDENTIFIER___View *view;
@property (nonatomic, strong) id object;

@end

@implementation ___FILEBASENAMEASIDENTIFIER___ViewTests

- (void)setUp {
        [super setUp];
        UIStoryboard *sb =[UIStoryboard storyboardWithName:k___FILEBASENAMEASIDENTIFIER___Storyboard bundle:[NSBundle mainBundle]];
        self.view = [sb instantiateViewControllerWithIdentifier:k___FILEBASENAMEASIDENTIFIER___ViewIdentifier];
        self.view.presenter = self;
}

- (void)tearDown {
        [super tearDown];
        self.view = nil;
        self.expectation = nil;
        self.object = nil;
}

#pragma mark - Presenter Interface

@end