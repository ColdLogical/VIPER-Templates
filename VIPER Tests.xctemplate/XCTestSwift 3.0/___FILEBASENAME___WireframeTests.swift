import UIKit
import XCTest

@testable import ___PROJECTNAME___

class ___FILEBASENAMEASIDENTIFIER___WireframeTests: XCTestCase {
        var wireframe: ___FILEBASENAMEASIDENTIFIER___Wireframe!

        // MARK: - Test Objects
        var presenterMock: ___FILEBASENAMEASIDENTIFIER___WireframeToPresenterInterfaceMock!
        var viewMock: ___FILEBASENAMEASIDENTIFIER___NavigationInterfaceMock!

        override func setUp() {
                super.setUp()

                wireframe = ___FILEBASENAMEASIDENTIFIER___Wireframe()
                presenterMock = ___FILEBASENAMEASIDENTIFIER___WireframeToPresenterInterfaceMock()
                viewMock = ___FILEBASENAMEASIDENTIFIER___NavigationInterfaceMock()

                wireframe.presenter = presenterMock
                wireframe.view = viewMock
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
                let storyboardName = storyboard.value(forKey: "name") as? String
                XCTAssertNotNil(storyboardName)
                XCTAssertEqual(___FILEBASENAMEASIDENTIFIER___Constants.storyboardIdentifier, storyboardName, "Storyboard identifier should be the constant identifier defined in the ___FILEBASENAMEASIDENTIFIER___WireframeProtocols file")
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
                let testDelegate = TestDelegateMock()

                // Act
                wireframe.delegate = testDelegate

                // Assert
                XCTAssertTrue(presenterMock.functionsCalled.contains("set(delegate:)"))
                XCTAssertTrue(presenterMock.modifiedDelegate === testDelegate)
        }

        // MARK: - Module Interface

        // MARK: - Presenter to Wireframe Interface

}
