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
        var interactor = ___FILEBASENAMEASIDENTIFIER___Interactor()
        
        // MARK: - Test Objects
        var expectation: XCTestExpectation?
        
        override func setUp() {
                super.setUp()
                interactor = ___FILEBASENAMEASIDENTIFIER___Interactor()
        }
        
        override func tearDown() {
                super.tearDown()
		interactor = ___FILEBASENAMEASIDENTIFIER___Interactor()
                expectation = nil;
        }
        
        // MARK: - Operational

        // MARK: - Interactor Input

        // MARK: - Interactor Output
        
}
