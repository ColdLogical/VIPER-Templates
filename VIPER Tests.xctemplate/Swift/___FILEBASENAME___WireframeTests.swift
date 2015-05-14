//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

import UIKit
import XCTest

import ___PROJECTNAME___

class ___FILEBASENAMEASIDENTIFIER___WireframeTests: XCTestCase, ___FILEBASENAMEASIDENTIFIER___Delegate, ___FILEBASENAMEASIDENTIFIER___Routing {
        var wireframe = ___FILEBASENAMEASIDENTIFIER___Wireframe()
        
        override func setUp() {
                super.setUp()
                wireframe = ___FILEBASENAMEASIDENTIFIER___Wireframe()
        }
        
        override func tearDown() {
                super.tearDown()
        }
        
        func testInit() {
                XCTAssertNotNil(wireframe, "Wireframe cannot be nil after init")
                
                XCTAssertNotNil(wireframe.interactor, "Interactor cannot be nil after init");
                XCTAssertNotNil(wireframe.presenter, "Presenter cannot be nil after init");
                XCTAssertNotNil(wireframe.view, "View cannot be nil after init");
                
                XCTAssertTrue(wireframe.presenter.isEqual(wireframe.interactor.presenter!), "Interactor's presenter must be the wireframe's presenter");
                
                XCTAssertTrue(wireframe.interactor.isEqual(wireframe.presenter.interactor!), "Presenter's interactor must be the wireframe's interactor");
                XCTAssertTrue(wireframe.view.isEqual(wireframe.presenter.view!), "Presenter's view must be the wireframe's view");
                XCTAssertTrue(wireframe.isEqual(wireframe.presenter.wireframe!), "Presenter's wireframe must be the wireframe");
                
                XCTAssertTrue(wireframe.presenter.isEqual(wireframe.view.presenter!), "View's presenter must be the wireframe's presenter");
        }
        
        // MARK: - Delegate
        
        // MARK: - Routing
}