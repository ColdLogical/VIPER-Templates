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
        self.wireframe = [___FILEBASENAMEASIDENTIFIER___Wireframe new];
        
        XCTAssertNotNil(self.wireframe, @"Wireframe cannot be nil after init");
        
        XCTAssertNotNil(self.wireframe.moduleInteractor, @"Interactor cannot be nil after init");
        XCTAssertNotNil(self.wireframe.modulePresenter, @"Presenter cannot be nil after init");
        XCTAssertNotNil(self.wireframe.moduleView, @"View cannot be nil after init");
        
        XCTAssertEqualObjects(self.wireframe.moduleInteractor.presenter, self.wireframe.modulePresenter, @"Interactor's presenter must be the module's presenter");
        
        XCTAssertEqualObjects(self.wireframe.modulePresenter.interactor, self.wireframe.moduleInteractor, @"Presenter's interactor must be the module's interactor");
        XCTAssertEqualObjects(self.wireframe.modulePresenter.view, self.wireframe.moduleView, @"Presenter's view must be the module's view");
        XCTAssertEqualObjects(self.wireframe.modulePresenter.wireframe, self.wireframe, @"Presenter's wireframe must be the module's wireframe");
        
        XCTAssertEqualObjects(self.wireframe.moduleView.presenter, self.wireframe.modulePresenter, @"View's presenter must be the module's presenter");
        
        XCTAssertEqualObjects(self.wireframe.presenter, self.wireframe.modulePresenter, @"Wireframe's presenter must be the module's presenter");
}

#pragma mark - Operational

#pragma mark - Wireframe Interface

#pragma mark - Delegate

#pragma mark - Routing

@end