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
        var expectation: XCTestExpecation?
        var presenter = ___FILEBASENAMEASIDENTIFIER___Presenter()
        var object: AnyObject?
        
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
                object = nil;
        }
        
        // MARK: - Operational

        // MARK: - Interactor Output

        // MARK: - Presenter Interface

        // MARK: - Routing

        // MARK: - Interactor Input
        
        // MARK: - View Interface
        
        // MARK: - Wireframe Interface
        
}
