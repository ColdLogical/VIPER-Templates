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

class ___FILEBASENAMEASIDENTIFIER___WireframeTests: XCTestCase,
        ___FILEBASENAMEASIDENTIFIER___Delegate,
        ___FILEBASENAMEASIDENTIFIER___WireframeToPresenterInterface
        {
        var wireframe = ___FILEBASENAMEASIDENTIFIER___()
        
        // MARK: - Test Objects
        var expectation: XCTestExpectation?
        
        override func setUp() {
                super.setUp()
                
		wireframe = ___FILEBASENAMEASIDENTIFIER___()
                
                wireframe.delegate = self;
                wireframe.presenter = self;
        }
        
        override func tearDown() {
                super.tearDown()
                expectation = nil;
        }
        
        // MARK: - Init
        func testInitWithNothingShouldInstantiateVIPERStackAndConnectLayers() {
                wireframe = ___FILEBASENAMEASIDENTIFIER___()
                
                XCTAssertNotNil(wireframe, "Wireframe cannot be nil after init")
                
                XCTAssertNotNil(wireframe.moduleInteractor, "Interactor cannot be nil after init")
                XCTAssertNotNil(wireframe.modulePresenter, "Presenter cannot be nil after init")
                XCTAssertNotNil(wireframe.moduleView, "View cannot be nil after init")
                
                XCTAssert (wireframe.modulePresenter === wireframe.moduleInteractor.presenter ? true : false, "Interactor's presenter must be the module's presenter")
                
                XCTAssert(wireframe.moduleInteractor === wireframe.modulePresenter.interactor ? true : false, "Presenter's interactor must be the module's interactor")
                XCTAssert(wireframe.moduleView === wireframe.modulePresenter.view ? true : false, "Presenter's view must be the module's view")
                XCTAssert(wireframe === wireframe.modulePresenter.wireframe ? true : false, "Presenter's wireframe must be the module'swireframe")
                
                XCTAssert(wireframe.modulePresenter === wireframe.moduleView.presenter ? true : false, "View's presenter must be the module's presenter")
                
                XCTAssert(wireframe.presenter === wireframe.modulePresenter ? true : false, "Wireframe's presenter must be the module's presenter")
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
                
                XCTAssertEqual (k___FILEBASENAMEASIDENTIFIER___StoryboardIdentifier, storyboard.valueForKey("name") as! String?, "Storyboard identifier should be the constant identifier defined in the ___FILEBASENAMEASIDENTIFIER___WireframeProtocols file")
        }

        // MARK: - Operational
        
        // MARK: - Module Interface
        
        // MARK: - Presenter to Wireframe Interface
        
        // MARK: - Delegate
        
        // MARK: - Wireframe to Presenter Interface
}
