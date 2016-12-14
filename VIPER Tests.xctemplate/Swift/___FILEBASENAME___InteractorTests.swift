//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

import Foundation
import XCTest

@testable import ___PROJECTNAME___

class ___FILEBASENAMEASIDENTIFIER___InteractorTests: XCTestCase {
        var interactor = ___FILEBASENAMEASIDENTIFIER___Interactor()

        // MARK: - Test Objects
        var expectation: XCTestExpectation?

        override func setUp() {
                super.setUp()

                interactor = ___FILEBASENAMEASIDENTIFIER___Interactor()

                interactor.presenter = self
        }

        override func tearDown() {
                super.tearDown()
                expectation = nil
        }

        // MARK: - Operational

        // MARK: - Presenter to Interactor Interface

}

// MARK: - Interactor to Presenter Interface
extension ___FILEBASENAMEASIDENTIFIER___InteractorTests: ___FILEBASENAMEASIDENTIFIER___InteractorToPresenterInterface {

}
