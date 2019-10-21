import Foundation
import XCTest

@testable import ___PROJECTNAME___

class ___VARIABLE_productName___InteractorTests: XCTestCase {
        var interactor: ___VARIABLE_productName___Interactor!

        // MARK: - Test Objects
        var presenterMock: ___VARIABLE_productName___InteractorToPresenterInterfaceMock!

        override func setUp() {
                super.setUp()

                interactor = ___VARIABLE_productName___Interactor()
                presenterMock = ___VARIABLE_productName___InteractorToPresenterInterfaceMock()

                interactor.presenter = presenterMock
        }

        // MARK: - Operational

        // MARK: - Presenter to Interactor Interface

}

 // MARK: - Communicaiton Interface Mocks
 // MARK: - Interactor to Presenter
class ___VARIABLE_productName___InteractorToPresenterInterfaceMock {
        var functionsCalled = [String]()

        // MARK: - Input Variables
}

extension ___VARIABLE_productName___InteractorToPresenterInterfaceMock: ___VARIABLE_productName___InteractorToPresenterInterface {

}

