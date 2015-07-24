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
        var expectation: XCTestExpecation?
        var wireframe = ___FILEBASENAMEASIDENTIFIER___Wireframe()
        var object: AnyObject?
        
        override func setUp() {
                super.setUp()
                wireframe.delegate = self;
                wireframe.presenter = self;
        }
        
        override func tearDown() {
                super.tearDown()
		wireframe = ___FILEBASENAMEASIDENTIFIER___Wireframe()
                expectation = nil;
                object = nil;
        }
        
        func testInit() {
                wireframe = ___FILEBASENAMEASIDENTIFIER___Wireframe()
                
                XCTAssertNotNil(wireframe, "Wireframe cannot be nil after init")
                
                XCTAssertNotNil(wireframe.moduleInteractor, "Interactor cannot be nil after init");
                XCTAssertNotNil(wireframe.modulePresenter, "Presenter cannot be nil after init");
                XCTAssertNotNil(wireframe.moduleView, "View cannot be nil after init");
                
                XCTAssertEqualObjects(wireframe.modulePresenter.isEqual(wireframe.moduleInteractor.presenter!), "Interactor's presenter must be the module's presenter");
                
                XCTAssertEqualObjects(wireframe.moduleInteractor.isEqual(wireframe.modulePresenter.interactor!), "Presenter's interactor must be the module's interactor");
                XCTAssertEqualObjects(wireframe.moduleView.isEqual(wireframe.modulePresenter.view!), "Presenter's view must be the module's view");
                XCTAssertEqualObjects(wireframe.isEqual(wireframe.modulePresenter.wireframe!), "Presenter's wireframe must be the module'swireframe");
                
                XCTAssertEqualObjects(wireframe.modulePresenter.isEqual(wireframe.moduleView.presenter!), "View's presenter must be the module's presenter");
                
                XCTAssertEqualObjects(wireframe.presenter.isEqual(wireframe.modulePresenter!), "Wireframe's presenter must be the module's presenter");
        }
        
        // MARK: - Operational
        
        // MARK: - Wireframe Interface
        
        // MARK: - Delegate
        
        // MARK: - Routing
}
