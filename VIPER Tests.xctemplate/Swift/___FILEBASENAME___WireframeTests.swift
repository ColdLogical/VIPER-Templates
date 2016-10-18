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

class ___FILEBASENAMEASIDENTIFIER___WireframeTests: XCTestCase
        , ___FILEBASENAMEASIDENTIFIER___Delegate
        , ___FILEBASENAMEASIDENTIFIER___WireframeToPresenterInterface
        {
        var wireframe = ___FILEBASENAMEASIDENTIFIER___Wireframe()
        
        // MARK: - Test Objects
        var expectation: XCTestExpectation?
        
        override func setUp() {
                super.setUp()
                
		wireframe = ___FILEBASENAMEASIDENTIFIER___Wireframe()
                
                wireframe.presenter = self;
        }
        
        override func tearDown() {
                super.tearDown()
                expectation = nil;
        }
        
        // MARK: - Init
        func testInitWithNothingShouldInstantiateVIPERStackAndConnectLayers() {
                wireframe = ___FILEBASENAMEASIDENTIFIER___Wireframe()
                
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
                XCTAssertTrue ((wireframe.moduleInteractor as Any) is ___FILEBASENAMEASIDENTIFIER___Interactor, "Lazy loader should create an instance of ___FILEBASENAMEASIDENTIFIER___Interactor")
        }

        func test___FILEBASENAMEASIDENTIFIER___PresenterLazyLoaderWithNilValueShouldInstantiatePresenter() {
                XCTAssertNotNil (wireframe.modulePresenter, "Lazy loader should create a new presenter if it doesnt exist")
                XCTAssertTrue ((wireframe.modulePresenter as Any) is ___FILEBASENAMEASIDENTIFIER___Presenter, "Lazy loader should create an instance of ___FILEBASENAMEASIDENTIFIER___Presenter")
        }

        func test___FILEBASENAMEASIDENTIFIER___ViewLazyLoaderWithNilValueShouldInstantiateView() {
                XCTAssertNotNil (wireframe.moduleView, "Lazy loader should create a new view if it doesnt exist")
                XCTAssertTrue ((wireframe.moduleView as Any) is ___FILEBASENAMEASIDENTIFIER___View, "Lazy loader should create an instance of ___FILEBASENAMEASIDENTIFIER___View")
        }

        func testStoryboardWithNothingShouldReturnStoryboardWithk___FILEBASENAMEASIDENTIFIER___StoryboardIdentifier() {
                let storyboard = ___FILEBASENAMEASIDENTIFIER___Wireframe.storyboard()
                
                XCTAssertEqual (k___FILEBASENAMEASIDENTIFIER___StoryboardIdentifier, storyboard.value(forKey: "name") as! String?, "Storyboard identifier should be the constant identifier defined in the ___FILEBASENAMEASIDENTIFIER___WireframeProtocols file")
        }

        // MARK: - Operational
        func testGetDelegateWithSelfAsDelegateShouldAskPresenterForDelegate() {
                expectation = expectation(description: "Presenter get delegate from delegate accessor")
                
                let delegate = wireframe.delegate
                
                XCTAssert(delegate === self)
                
                waitForExpectations(timeout: 5, handler: {
                        (error: Error?) -> Void in
                        if error != nil {
                                XCTFail("Presenter never asked for delegate")
                        }
                })
        }
        
        func testSetDelegateWithAnythingShouldTellPresenterToSetNewDelegate() {
                expectation = expectation(description: "Presenter set new delegate from delegate modifier")
                
                wireframe.delegate = self
                
                waitForExpectations(timeout: 5, handler: {
                        (error: Error?) -> Void in
                        if error != nil {
                                XCTFail("Presenter was never told to set delegate")
                        }
                })
        }
        
        // MARK: - Module Interface
        
        // MARK: - Presenter to Wireframe Interface
        
        // MARK: - Delegate
        
        // MARK: - Wireframe to Presenter Interface
        weak var delegate: ___FILEBASENAMEASIDENTIFIER___Delegate? {
                get {
                        if expectation?.description ==  "Presenter get delegate from delegate accessor" {
                                expectation?.fulfill()
                        }
                        return self
                }
        }
        
        func set(newDelegate: ___FILEBASENAMEASIDENTIFIER___Delegate?) {
                if expectation?.description ==  "Presenter set new delegate from delegate modifier" {
                        expectation?.fulfill()
                        XCTAssert(newDelegate === self)
                }
        }
}
