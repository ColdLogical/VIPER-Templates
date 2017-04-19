import Foundation
import XCTest

@testable import ___PROJECTNAME___

class ___FILEBASENAMEASIDENTIFIER___PresenterTests: XCTestCase {
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
                expectation = nil
        }

        // MARK: - Operational

        // MARK: - Interactor to Presenter Interface

        // MARK: - View to Presenter Interface

        // MARK: - Wireframe to Presenter Interface
        func testSetDelegateWithAnythingShouldSetPresentersDelegate() {
                // Arrange

                // Act
                presenter.set(delegate: self)

                // Assert
                XCTAssert(presenter.delegate === self)
        }
}

// MARK: Delegate
extension ___FILEBASENAMEASIDENTIFIER___PresenterTests: ___FILEBASENAMEASIDENTIFIER___Delegate {

}

// MARK: - Presenter to Interactor Interface
extension ___FILEBASENAMEASIDENTIFIER___PresenterTests: ___FILEBASENAMEASIDENTIFIER___PresenterToInteractorInterface {

}

// MARK: - Presenter to View Interface
extension ___FILEBASENAMEASIDENTIFIER___PresenterTests: ___FILEBASENAMEASIDENTIFIER___PresenterToViewInterface {

}

// MARK: - Presenter to Wireframe Interface
extension ___FILEBASENAMEASIDENTIFIER___PresenterTests: ___FILEBASENAMEASIDENTIFIER___PresenterToWireframeInterface {

}
