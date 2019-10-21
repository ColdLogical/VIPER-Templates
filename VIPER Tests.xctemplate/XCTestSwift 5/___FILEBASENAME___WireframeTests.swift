import UIKit
import XCTest

@testable import ___PROJECTNAME___

class ___VARIABLE_productName___WireframeTests: XCTestCase {
        var wireframe: ___VARIABLE_productName___Wireframe!

        // MARK: - Test Objects
        var presenterMock: ___VARIABLE_productName___WireframeToPresenterInterfaceMock!
        var viewMock: ___VARIABLE_productName___NavigationInterfaceMock!

        override func setUp() {
                super.setUp()

                wireframe = ___VARIABLE_productName___Wireframe()
                presenterMock = ___VARIABLE_productName___WireframeToPresenterInterfaceMock()
                viewMock = ___VARIABLE_productName___NavigationInterfaceMock()

                wireframe.presenter = presenterMock
                wireframe.view = viewMock
        }

        // MARK: - Init
        func testInitWithNothingShouldInstantiateVIPERStackAndConnectLayers() {
                // Arrange
                wireframe = ___VARIABLE_productName___Wireframe()

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
        func testStoryboardWithNothingShouldReturnStoryboardWith___VARIABLE_productName___ConstantsStoryboardIdentifier() {
                // Arrange
                let storyboard = ___VARIABLE_productName___Wireframe.storyboard()

                // Act

                // Assert
                let storyboardName = storyboard.value(forKey: "name") as? String
                XCTAssertNotNil(storyboardName)
                XCTAssertEqual(___VARIABLE_productName___Constants.storyboardIdentifier, storyboardName, "Storyboard identifier should be the constant identifier defined in the ___VARIABLE_productName___WireframeProtocols file")
        }

        // MARK: - Operational
        func testGetDelegateWithAnyDelegateShouldAskPresenterForDelegate() {
                // Arrange

                // Act
                _ = wireframe.delegate

                // Assert
                XCTAssertTrue(presenterMock.functionsCalled.contains("delegate"))
        }

        func testSetDelegateWithAnythingShouldTellPresenterToSetNewDelegate() {
                // Arrange
                let testDelegate = ___VARIABLE_productName___DelegateMock()

                // Act
                wireframe.delegate = testDelegate

                // Assert
                XCTAssertTrue(presenterMock.functionsCalled.contains("set(delegate:)"))
                XCTAssertTrue(presenterMock.modifiedDelegate === testDelegate)
        }

        // MARK: - Module Interface

        // MARK: - Presenter to Wireframe Interface

}
