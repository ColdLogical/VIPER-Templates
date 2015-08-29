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

class ___FILEBASENAMEASIDENTIFIER___PresenterTests: XCTestCase, ___FILEBASENAMEASIDENTIFIER___InteractorInput, ___FILEBASENAMEASIDENTIFIER___ViewInterface, ___FILEBASENAMEASIDENTIFIER___WireframeInterface {
        var presenter = ___FILEBASENAMEASIDENTIFIER___Presenter()
        
        // MARK: - Test Objects
        var expectation: XCTestExpectation?
        
        override func setUp() {
                super.setUp()
                presenter = ___FILEBASENAMEASIDENTIFIER___Presenter()
                presenter.interactor = self
                presenter.view = self
                presenter.wireframe = self
        }
        
        override func tearDown() {
                super.tearDown()
		presenter = ___FILEBASENAMEASIDENTIFIER___Presenter()
                expectation = nil;
        }
        
        // MARK: - Operational

        // MARK: - Interactor Output

        // MARK: - Presenter Interface

        // MARK: - Routing

        // MARK: - Interactor Input
        
        // MARK: - View Interface
        
        // MARK: - Wireframe Interface
        
}
