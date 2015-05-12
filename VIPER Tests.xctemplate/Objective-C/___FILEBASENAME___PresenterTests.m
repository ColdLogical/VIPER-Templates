//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>

#import "___FILEBASENAMEASIDENTIFIER___Presenter.h"
#import "___FILEBASENAMEASIDENTIFIER___PresenterProtocols.h"

@interface ___FILEBASENAMEASIDENTIFIER___PresenterTests : XCTestCase <___FILEBASENAMEASIDENTIFIER___InteractorInput, ___FILEBASENAMEASIDENTIFIER___ViewInterface, ___FILEBASENAMEASIDENTIFIER___WireframeInterface>

@property (nonatomic, strong) ___FILEBASENAMEASIDENTIFIER___Presenter *presenter;

@end

@implementation ___FILEBASENAMEASIDENTIFIER___PresenterTests

- (void)setUp {
        [super setUp];
        self.presenter = [___FILEBASENAMEASIDENTIFIER___Presenter new];
        self.presenter.interactor = self;
        self.presenter.view = self;
        self.presenter.wireframe = self;
}

- (void)tearDown {
        [super tearDown];
        self.presenter = nil;
}

#pragma mark - Interactor

#pragma mark - View

#pragma mark - Wireframe

@end
