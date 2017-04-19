import UIKit
import XCTest

@testable import ___PROJECTNAME___

class ___FILEBASENAMEASIDENTIFIER___WireframeTests: XCTestCase {
        var wireframe = ___FILEBASENAMEASIDENTIFIER___Wireframe()

        // MARK: - Test Objects
        var expectation: XCTestExpectation?

        override func setUp() {
                super.setUp()

                wireframe = ___FILEBASENAMEASIDENTIFIER___Wireframe()

                wireframe.presenter = self
        }

        override func tearDown() {
                super.tearDown()
                expectation = nil
        }

        // MARK: - Init
        func testInitWithNothingShouldInstantiateVIPERStackAndConnectLayers() {
                // Arrange
                wireframe = ___FILEBASENAMEASIDENTIFIER___Wireframe()

                // Act
            
                // Assert
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
                XCTAssert(wireframe.view === wireframe.moduleView ? true : false, "Wireframe's view must be the module's view")
        }

        // MARK: - Class Functions
        func testStoryboardWithNothingShouldReturnStoryboardWith___FILEBASENAMEASIDENTIFIER___ConstantsStoryboardIdentifier() {
                // Arrange
                let storyboard = ___FILEBASENAMEASIDENTIFIER___Wireframe.storyboard()

                // Act

                // Assert
                XCTAssertEqual (___FILEBASENAMEASIDENTIFIER___Constants.storyboardIdentifier, storyboard.value(forKey: "name") as? String, "Storyboard identifier should be the constant identifier defined in the ___FILEBASENAMEASIDENTIFIER___WireframeProtocols file")
        }

        // MARK: - Operational
        func testGetDelegateWithAnyDelegateShouldAskPresenterForDelegate() {
                // Arrange
                expectation = expectation(description: "Presenter get delegate from delegate accessor")

                // Act
                let _ = wireframe.delegate

                // Assert
                waitForExpectations(timeout: 5, handler: {
                        (error: Error?) -> Void in
                        if error != nil {
                                XCTFail("Presenter never asked for delegate")
                        }
                })
        }

        func testSetDelegateWithAnythingShouldTellPresenterToSetNewDelegate() {
                // Arrange
                expectation = expectation(description: "Presenter set new delegate from delegate modifier")

                // Act
                wireframe.delegate = self

                // Assert
                waitForExpectations(timeout: 5, handler: {
                        (error: Error?) -> Void in
                        if error != nil {
                                XCTFail("Presenter was never told to set delegate")
                        }
                })
        }

        // MARK: - Module Interface

        // MARK: - Presenter to Wireframe Interface

}

// MARK: - Delegate
extension ___FILEBASENAMEASIDENTIFIER___WireframeTests: ___FILEBASENAMEASIDENTIFIER___Delegate {

}

// MARK: - Navigation Interface
extension ___FILEBASENAMEASIDENTIFIER___WireframeTests: ___FILEBASENAMEASIDENTIFIER___NavigationInterface {

}

// MARK: - Wireframe to Presenter Interface
extension ___FILEBASENAMEASIDENTIFIER___WireframeTests: ___FILEBASENAMEASIDENTIFIER___WireframeToPresenterInterface {
        weak var delegate: ___FILEBASENAMEASIDENTIFIER___Delegate? {
                get {
                        if expectation?.description ==  "Presenter get delegate from delegate accessor" {
                                expectation?.fulfill()
                        }
                        return self
                }
        }

        func set(delegate newDelegate: ___FILEBASENAMEASIDENTIFIER___Delegate?) {
                if expectation?.description ==  "Presenter set new delegate from delegate modifier" {
                        expectation?.fulfill()
                        XCTAssert(newDelegate === self)
                }
        }
}
