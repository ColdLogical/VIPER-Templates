//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

import Foundation
import XCTest

import ___PROJECTNAME___

class ___FILEBASENAMEASIDENTIFIER___InteractorTests: XCTestCase, ___FILEBASENAMEASIDENTIFIER___InteractorOutput {
        var expectation: XCTestExpecation?
        var interactor = ___FILEBASENAMEASIDENTIFIER___Interactor()
        var object: AnyObject?
        
        override func setUp() {
                super.setUp()
                interactor = ___FILEBASENAMEASIDENTIFIER___Interactor()
        }
        
        override func tearDown() {
                super.tearDown()
                expectation = nil;
                object = nil;
        }
        
        // MARK: - Interactor Output
        
}