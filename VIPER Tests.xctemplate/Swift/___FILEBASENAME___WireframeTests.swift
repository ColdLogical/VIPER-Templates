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
        
        // MARK: - Test Objects
        var expectation: XCTestExpectation?
        
        override func setUp() {
                super.setUp()
                wireframe.delegate = self;
                wireframe.presenter = self;
        }
        
        override func tearDown() {
                super.tearDown()
		wireframe = ___FILEBASENAMEASIDENTIFIER___Wireframe()
                expectation = nil;
        }
        
        // MARK: - Init
        func testInitWithNothingShouldInstantiateVIPERStackAndConnectLayers() {
                wireframe = ___FILEBASENAMEASIDENTIFIER___Wireframe()
                
                XCTAssertNotNil(wireframe, "Wireframe cannot be nil after init")
                
                XCTAssertNotNil(wireframe.moduleInteractor, "Interactor cannot be nil after init")
                XCTAssertNotNil(wireframe.modulePresenter, "Presenter cannot be nil after init")
                XCTAssertNotNil(wireframe.moduleView, "View cannot be nil after init")
                
                XCTAssertEqualObjects(wireframe.modulePresenter.isEqual(wireframe.moduleInteractor.presenter), "Interactor's presenter must be the module's presenter")
                
                XCTAssertEqualObjects(wireframe.moduleInteractor.isEqual(wireframe.modulePresenter.interactor), "Presenter's interactor must be the module's interactor")
                XCTAssertEqualObjects(wireframe.moduleView.isEqual(wireframe.modulePresenter.view), "Presenter's view must be the module's view")
                XCTAssertEqualObjects(wireframe.isEqual(wireframe.modulePresenter.wireframe), "Presenter's wireframe must be the module'swireframe")
                
                XCTAssertEqualObjects(wireframe.modulePresenter.isEqual(wireframe.moduleView.presenter), "View's presenter must be the module's presenter")
                
                XCTAssertEqualObjects(wireframe.presenter.isEqual(wireframe.modulePresenter), "Wireframe's presenter must be the module's presenter")
        }
        
        // MARK: - Lazy Loaders
        func test___FILEBASENAMEASIDENTIFIER___InteractorLazyLoaderWithNilValueShouldInstantiateInteractor() {
                XCTAssertNotNil (wireframe.moduleInteractor, "Lazy loader should create a new interactor if it doesnt exist")
                XCTAssertTrue (wireframe.moduleInteractor.isKindOfClass(___FILEBASENAMEASIDENTIFIER___Interactor), "Lazily loader should create an instance of ___FILEBASENAMEASIDENTIFIER___Interactor")
        }

        func test___FILEBASENAMEASIDENTIFIER___PresenterLazyLoaderWithNilValueShouldInstantiatePresenter() {
                XCTAssertNotNil (wireframe.modulePresenter, "Lazy loader should create a new presenter if it doesnt exist")
                XCTAssertTrue (wireframe.modulePresenter.isKindOfClass(___FILEBASENAMEASIDENTIFIER___Presenter), "Lazily loader should create an instance of ___FILEBASENAMEASIDENTIFIER___Presenter")
        }

        func test___FILEBASENAMEASIDENTIFIER___ViewLazyLoaderWithNilValueShouldInstantiateView() {
                XCTAssertNotNil (wireframe.moduleView, "Lazy loader should create a new view if it doesnt exist")
                XCTAssertTrue (wireframe.moduleView.isKindOfClass(___FILEBASENAMEASIDENTIFIER___View), "Lazily loader should create an instance of ___FILEBASENAMEASIDENTIFIER___View")
        }

        func testStoryboardWithNothingShouldReturnStoryboardWithk___FILEBASENAMEASIDENTIFIER___StoryboardIdentifier() {
                let storyboard = ___FILEBASENAMEASIDENTIFIER___Wireframe.storyboard()
                
                XCTAssertEqualObjects (k___FILEBASENAMEASIDENTIFIER___Storyboard, storyboard.valueForKey("name"), "Storyboard identifier should be the constant identifier defined in the ___FILEBASENAMEASIDENTIFIER___WireframeProtocols file")
        }

        // MARK: - Operational
        
        // MARK: - Wireframe Interface
        
        // MARK: - Delegate
        
        // MARK: - Routing
}
