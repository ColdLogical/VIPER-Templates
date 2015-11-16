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

@property (nonatomic, strong) ___FILEBASENAMEASIDENTIFIER___View *view;
@property (nonatomic, strong) UIWindow *window;

// Test Objects
@property (nonatomic, strong) XCTestExpectation *expectation;

@end

@implementation ___FILEBASENAMEASIDENTIFIER___ViewTests

- (void)setUp {
        [super setUp];
	
        UIStoryboard *sb =[UIStoryboard storyboardWithName:k___FILEBASENAMEASIDENTIFIER___Storyboard bundle:[NSBundle mainBundle]];
        self.view = [sb instantiateViewControllerWithIdentifier:k___FILEBASENAMEASIDENTIFIER___ViewIdentifier];
	[self.view loadView];
	self.window = [UIWindow new];
        self.window.rootViewController = self.view;
        [self.window makeKeyAndVisible];

        self.view.presenter = self;
}

- (void)tearDown {
        [super tearDown];
        self.expectation = nil;
}

#pragma mark - Operational

#pragma mark - View Interface

#pragma mark - Presenter Interface

@end
