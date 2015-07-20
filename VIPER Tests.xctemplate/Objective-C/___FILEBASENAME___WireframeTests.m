//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>

#import "___FILEBASENAMEASIDENTIFIER___Wireframe.h"

#import "___FILEBASENAMEASIDENTIFIER___Interactor.h"
#import "___FILEBASENAMEASIDENTIFIER___Presenter.h"
#import "___FILEBASENAMEASIDENTIFIER___View.h"

@interface ___FILEBASENAMEASIDENTIFIER___WireframeTests : XCTestCase <___FILEBASENAMEASIDENTIFIER___Delegate, ___FILEBASENAMEASIDENTIFIER___Routing>

@property (nonatomic, strong) XCTestExpectation *expectation;
@property (nonatomic, strong) ___FILEBASENAMEASIDENTIFIER___Wireframe *wireframe;
@property (nonatomic, strong) id object;

@end

@implementation ___FILEBASENAMEASIDENTIFIER___WireframeTests

- (void)setUp {
        [super setUp];
        self.wireframe = [___FILEBASENAMEASIDENTIFIER___Wireframe new];
        self.wireframe.delegate = self;
        self.wireframe.presenter = self;
}

- (void)tearDown {
        [super tearDown];
        self.wireframe = nil;
        self.expectation = nil;
        self.object = nil;
}

- (void)testInit {
        XCTAssertNotNil(self.wireframe, @"Wireframe cannot be nil after init");
        
        XCTAssertNotNil(self.wireframe.moduleInteractor, @"Interactor cannot be nil after init");
        XCTAssertNotNil(self.wireframe.modulePresenter, @"Presenter cannot be nil after init");
        XCTAssertNotNil(self.wireframe.moduleView, @"View cannot be nil after init");
        
        XCTAssertTrue(self.wireframe.moduleInteractor.presenter == self.wireframe.modulePresenter, @"Interactor's presenter must be the wireframe's presenter");
        
        XCTAssertTrue(self.wireframe.modulePresenter.interactor == self.wireframe.moduleInteractor, @"Presenter's interactor must be the wireframe's interactor");
        XCTAssertTrue(self.wireframe.modulePresenter.view == self.wireframe.moduleView, @"Presenter's view must be the wireframe's view");
        XCTAssertTrue(self.wireframe.modulePresenter.wireframe ==self.wireframe, @"Presenter's wireframe must be the wireframe");
        
        XCTAssertTrue(self.wireframe.moduleView.presenter == self.wireframe.modulePresenter, @"View's presenter must be the wireframe's presenter");
}

#pragma mark - Delegate

#pragma mark - Routing

@end