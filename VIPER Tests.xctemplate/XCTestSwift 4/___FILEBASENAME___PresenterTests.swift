import Foundation
import XCTest

@testable import ___PROJECTNAME___

class ___VARIABLE_productName___PresenterTests: XCTestCase {
        var presenter: ___VARIABLE_productName___Presenter!

        // MARK: - Test Objects
        var delegateMock: ___VARIABLE_productName___DelegateMock!
        var interactorMock: ___VARIABLE_productName___PresenterToInteractorInterfaceMock!
        var viewMock: ___VARIABLE_productName___PresenterToViewInterfaceMock!
        var wireframeMock: ___VARIABLE_productName___WireframeInterfacesMock!

        override func setUp() {
                super.setUp()

                presenter = ___VARIABLE_productName___Presenter()
                delegateMock = ___VARIABLE_productName___DelegateMock()
                interactorMock = ___VARIABLE_productName___PresenterToInteractorInterfaceMock()
                viewMock = ___VARIABLE_productName___PresenterToViewInterfaceMock()
                wireframeMock = ___VARIABLE_productName___WireframeInterfacesMock()

                presenter.delegate = delegateMock
                presenter.interactor = interactorMock
                presenter.view = viewMock
                presenter.wireframe = wireframeMock
        }

        // MARK: - Operational
        func testModuleWireframeComputedVariableWithConnectedWireframeReturnsTheWireframeAsA___VARIABLE_productName___Object() {
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
                let testDelegate = ___VARIABLE_productName___DelegateMock()

                // Act
                presenter.set(delegate: testDelegate)

                // Assert
                XCTAssert(presenter.delegate === testDelegate)
        }
}

// MARK: - Communicaiton Interface Mocks
// MARK: - Delegate
class ___VARIABLE_productName___DelegateMock {
        var functionsCalled = [String]()

        // MARK: - Input Variables
}

extension ___VARIABLE_productName___DelegateMock: ___VARIABLE_productName___Delegate {

}

// MARK: - Presenter to Interactor
class ___VARIABLE_productName___PresenterToInteractorInterfaceMock {
        var functionsCalled = [String]()

        // MARK: - Input Variables
}

extension ___VARIABLE_productName___PresenterToInteractorInterfaceMock: ___VARIABLE_productName___PresenterToInteractorInterface {

}

// MARK: - Presenter to Wireframe
class ___VARIABLE_productName___WireframeInterfacesMock {
        var functionsCalled = [String]()

        // MARK: - Input Variables
}

extension ___VARIABLE_productName___WireframeInterfacesMock: ___VARIABLE_productName___ {
        var delegate: ___VARIABLE_productName___Delegate? {
                get {
                        functionsCalled.append(#function)
                        return nil
                }
            set {
                functionsCalled.append(#function)
            }
        }
}

extension ___VARIABLE_productName___WireframeInterfacesMock: ___VARIABLE_productName___PresenterToWireframeInterface {

}

// MARK: - Presenter to View
class ___VARIABLE_productName___PresenterToViewInterfaceMock {
        var functionsCalled = [String]()

        // MARK: - Input Variables
}

extension ___VARIABLE_productName___PresenterToViewInterfaceMock: ___VARIABLE_productName___PresenterToViewInterface {

}
