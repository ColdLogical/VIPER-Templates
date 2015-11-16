//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>

#import "___FILEBASENAMEASIDENTIFIER___Interactor.h"
#import "___FILEBASENAMEASIDENTIFIER___InteractorProtocols.h"

@interface ___FILEBASENAMEASIDENTIFIER___InteractorTests : XCTestCase <___FILEBASENAMEASIDENTIFIER___InteractorOutput>

@property (nonatomic, strong) ___FILEBASENAMEASIDENTIFIER___Interactor *interactor;

// Test Objects
@property (nonatomic, strong) XCTestExpectation *expectation;

@end

@implementation ___FILEBASENAMEASIDENTIFIER___InteractorTests

- (void)setUp {
        [super setUp];
        
        self.interactor = [___FILEBASENAMEASIDENTIFIER___Interactor new];
        
        self.interactor.presenter = self;
}

- (void)tearDown {
        [super tearDown];
        self.expectation = nil;
}

#pragma mark - Operational

#pragma mark - Interactor Input

#pragma mark - Interactor Output

@end