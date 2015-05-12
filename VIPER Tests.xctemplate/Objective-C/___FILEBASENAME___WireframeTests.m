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

@interface ___FILEBASENAMEASIDENTIFIER___WireframeTests : XCTestCase

@property (nonatomic, strong) ___FILEBASENAMEASIDENTIFIER___Wireframe *wireframe;

@end

@implementation ___FILEBASENAMEASIDENTIFIER___WireframeTests

- (void)setUp {
        [super setUp];
        self.wireframe = [___FILEBASENAMEASIDENTIFIER___Wireframe new];
}

- (void)tearDown {
        [super tearDown];
        self.wireframe = nil;
}

- (void)testInit {
        XCTAssertNotNil(self.wireframe, @"Wireframe cannot be nil after init");
        
        XCTAssertNotNil(self.wireframe.interactor, @"Interactor cannot be nil after init");
        XCTAssertNotNil(self.wireframe.presenter, @"Presenter cannot be nil after init");
        XCTAssertNotNil(self.wireframe.view, @"View cannot be nil after init");
        
        XCTAssertTrue(self.wireframe.interactor.presenter == self.wireframe.presenter, @"Interactor's presenter must be the wireframe's presenter");
        
        XCTAssertTrue(self.wireframe.presenter.interactor == self.wireframe.interactor, @"Presenter's interactor must be the wireframe's interactor");
        XCTAssertTrue(self.wireframe.presenter.view == self.wireframe.view, @"Presenter's view must be the wireframe's view");
        XCTAssertTrue(self.wireframe.presenter.wireframe ==self.wireframe, @"Presenter's wireframe must be the wireframe");
        
        XCTAssertTrue(self.wireframe.view.presenter == self.wireframe.presenter, @"View's presenter must be the wireframe's presenter");
}

#pragma mark - Delegate

#pragma mark - Presenter

@end