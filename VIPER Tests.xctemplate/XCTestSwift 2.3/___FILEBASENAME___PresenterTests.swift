import Foundation
import XCTest

@testable import ___PROJECTNAME___

class ___FILEBASENAMEASIDENTIFIER___PresenterTests: XCTestCase {
        var presenter: ___FILEBASENAMEASIDENTIFIER___Presenter!

        // MARK: - Test Objects
        var delegateMock: ___FILEBASENAMEASIDENTIFIER___DelegateMock!
        var interactorMock: ___FILEBASENAMEASIDENTIFIER___PresenterToInteractorInterfaceMock!
        var viewMock: ___FILEBASENAMEASIDENTIFIER___PresenterToViewInterfaceMock!
        var wireframeMock: ___FILEBASENAMEASIDENTIFIER___WireframeInterfacesMock!

        override func setUp() {
                super.setUp()

                presenter = ___FILEBASENAMEASIDENTIFIER___Presenter()
                delegateMock = ___FILEBASENAMEASIDENTIFIER___DelegateMock()
                interactorMock = ___FILEBASENAMEASIDENTIFIER___PresenterToInteractorInterfaceMock()
                viewMock = ___FILEBASENAMEASIDENTIFIER___PresenterToViewInterfaceMock()
                wireframeMock = ___FILEBASENAMEASIDENTIFIER___WireframeInterfacesMock()

                presenter.delegate = delegateMock
                presenter.interactor = interactorMock
                presenter.view = viewMock
                presenter.wireframe = wireframeMock
        }

        // MARK: - Operational
        func testModuleWireframeComputedVariableWithConnectedWireframeReturnsTheWireframeAsA___FILEBASENAMEASIDENTIFIER___Object() {
                // Arrange

                // Act
                let moduleWireframe = presenter.moduleWireframe

                // Assert
                XCTAssert(moduleWireframe === wireframeMock)
        }

        // MARK: - Interactor to Presenter Interface

        // MARK: - View to Presenter Interface

        // MARK: - Wireframe to Presenter Interface
        func testSetDelegateWithAnythingShouldSetPresentersDelegate() {
                // Arrange
                presenter.delegate = nil
                let testDelegate = ___FILEBASENAMEASIDENTIFIER___DelegateMock()

                // Act
                presenter.set(delegate: testDelegate)

                // Assert
                XCTAssert(presenter.delegate === testDelegate)
        }
}
