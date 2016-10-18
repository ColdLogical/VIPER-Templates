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

@interface ___FILEBASENAMEASIDENTIFIER___WireframeTests : XCTestCase <
        ___FILEBASENAMEASIDENTIFIER___WireframeToPresenterInterface
        >

@property (nonatomic, strong) ___FILEBASENAMEASIDENTIFIER___Wireframe *wireframe;

// Test Objects
@property (nonatomic, strong) XCTestExpectation *expectation;

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
        self.expectation = nil;
}

#pragma mark - Init
- (void)testInitWithNothingShouldInstantiateVIPERStackAndConnectLayers {
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

#pragma mark - Lazy Loaders
-(void)test___FILEBASENAMEASIDENTIFIER___InteractorLazyLoaderWithNilValueShouldInstantiateInteractor {
        self.wireframe.moduleInteractor = nil;
        
        XCTAssertNotNil (self.wireframe.moduleInteractor, @"Lazy loader should create a new interactor if it doesnt exist");
        XCTAssertTrue ([self.wireframe.moduleInteractor isKindOfClass:[___FILEBASENAMEASIDENTIFIER___Interactor class]], @"Lazily loader should create an instance of ___FILEBASENAMEASIDENTIFIER___Interactor");
}

-(void)test___FILEBASENAMEASIDENTIFIER___PresenterLazyLoaderWithNilValueShouldInstantiatePresenter {
        self.wireframe.modulePresenter = nil;
        
        XCTAssertNotNil (self.wireframe.modulePresenter, @"Lazy loader should create a new presenter if it doesnt exist");
        XCTAssertTrue ([self.wireframe.modulePresenter isKindOfClass:[___FILEBASENAMEASIDENTIFIER___Presenter class]], @"Lazily loader should create an instance of ___FILEBASENAMEASIDENTIFIER___Presenter");
}

-(void)test___FILEBASENAMEASIDENTIFIER___ViewLazyLoaderWithNilValueShouldInstantiateView {
        self.wireframe.moduleView = nil;
        
        XCTAssertNotNil (self.wireframe.moduleView, @"Lazy loader should create a new view if it doesnt exist");
        XCTAssertTrue ([self.wireframe.moduleView isKindOfClass:[___FILEBASENAMEASIDENTIFIER___View class]], @"Lazily loader should create an instance of ___FILEBASENAMEASIDENTIFIER___View");
}

-(void)testStoryboardWithNothingShouldReturnStoryboardWithk___FILEBASENAMEASIDENTIFIER___StoryboardIdentifier {
        UIStoryboard *storyboard = [___FILEBASENAMEASIDENTIFIER___Wireframe storyboard];
        
        XCTAssertEqualObjects (k___FILEBASENAMEASIDENTIFIER___Storyboard, [storyboard valueForKey:@"name"], @"Storyboard identifier should be the constant identifier defined in the ___FILEBASENAMEASIDENTIFIER___WireframeProtocols file");
}

#pragma mark - Operational
-(void)testGetDelegateWithSelfAsDelegateShouldAskPresenterForDelegate {
        self.expectation = [self expectationWithDescription:@"Presenter get delegate from delegate accessor"];
        
        id delegate = wireframe.delegate
        
        XCTAssertEqualObjects(delegate, self)
        
        [self waitForExpectationsWithTimeout:5
                                     handler:^(NSError *error) {
                                             self.expectation = nil;
                                             if (error) {
                                                     XCTFail (@"Presenter never asked for delegate");
                                             }
                                     }];
}

- (void)testSetDelegateWithAnythingShouldTellPresenterToSetNewDelegate {
        self.expectation = [self expectationWithDescription:@"Presenter set new delegate from delegate modifier"];
        
        wireframe.delegate = self
        
        [self waitForExpectationsWithTimeout:5
                                     handler:^(NSError *error) {
                                             self.expectation = nil;
                                             if (error) {
                                                     XCTFail (@"Presenter was never told to set delegate");
                                             }
                                     }];
}

#pragma mark - Presenter to Wireframe Interface

#pragma mark - Delegate

#pragma mark - Wireframe to Presenter Interface
-(id<___FILEBASENAMEASIDENTIFIER___Delegate>)delegate {
        if([self.expectation.description isEqualToString:@"Presenter get delegate from delegate accessor"]) {
                [self.expectation fulfill];
        }
        
        return self
}

-(void)setDelegate:(id<___FILEBASENAMEASIDENTIFIER___Delegate>)newDelegate {
        if([self.expectation.description isEqualToString:@"Presenter set new delegate from delegate modifier"]) {
                [self.expectation fulfill];
                XCTAssertEqualObjects(newDelegate, self)
        }
}

@end
