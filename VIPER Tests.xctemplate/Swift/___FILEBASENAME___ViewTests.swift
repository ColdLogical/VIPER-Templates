//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

import UIKit
import XCTest

@testable import ___PROJECTNAME___

class ___FILEBASENAMEASIDENTIFIER___ViewTests: XCTestCase {
        var view = ___FILEBASENAMEASIDENTIFIER___View()

        // MARK: - Test Objects
        var expectation: XCTestExpectation?

        override func setUp() {
                super.setUp()

                _ = view.view

                view.presenter = self
        }

        override func tearDown() {
                super.tearDown()
                expectation = nil
        }

        // MARK: - Operational

        // MARK: - Presenter to View Interface

}

// MARK: - View To Presenter Interface
extension ___FILEBASENAMEASIDENTIFIER___ViewTests: ___FILEBASENAMEASIDENTIFIER___ViewToPresenterInterface {

}
