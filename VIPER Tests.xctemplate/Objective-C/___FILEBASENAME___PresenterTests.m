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

@interface ___FILEBASENAMEASIDENTIFIER___PresenterTests : XCTestCase <
        ___FILEBASENAMEASIDENTIFIER___Delegate
        , ___FILEBASENAMEASIDENTIFIER___PresenterToInteractorInterface
        , ___FILEBASENAMEASIDENTIFIER___PresenterToViewInterface
        , ___FILEBASENAMEASIDENTIFIER___PresenterToWireframeInterface
        >

@property (nonatomic, strong) ___FILEBASENAMEASIDENTIFIER___Presenter *presenter;

// Test Objects
@property (nonatomic, strong) XCTestExpectation *expectation;

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
        self.expectation = nil;
}

#pragma mark - Operational

#pragma mark - Interactor to Presenter Interface

#pragma mark - View to Presenter Interface

#pragma mark - Wireframe to Presenter Interface
-(void)testSetDelegateWithAnythingShouldSetPresentersDelegate {
        self.presenter.delegate = self;
        
        XCTAssertEqualObjects (self.presenter.delegate, self);
}

#pragma mark - Presenter to Interactor Interface

#pragma mark - Presenter to View Interface

#pragma mark - Presenter to Wireframe Interface

@end
