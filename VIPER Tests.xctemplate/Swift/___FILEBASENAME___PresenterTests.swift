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

class ___FILEBASENAMEASIDENTIFIER___PresenterTests: XCTestCase,
        ___FILEBASENAMEASIDENTIFIER___PresenterToInteractorInterface,
        ___FILEBASENAMEASIDENTIFIER___PresenterToViewInterface,
        ___FILEBASENAMEASIDENTIFIER___PresenterToWireframeInterface
        {
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
                expectation = nil;
        }
        
        // MARK: - Operational

        // MARK: - Interactor to Presenter Interface

        // MARK: - View to Presenter Interface

        // MARK: - Wireframe to Presenter Interface

        // MARK: - Presenter to Interactor Input
        
        // MARK: - Presenter to View Interface
        
        // MARK: - Presenter to Wireframe Interface
        
}
