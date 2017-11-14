@testable import ___PROJECTNAME___

class ___VARIABLE_productName___WireframeToPresenterInterfaceMock {
        var functionsCalled = [String]()

        // MARK: - Input Variables
        var modifiedDelegate: ___VARIABLE_productName___Delegate?

        // MARK: - Output Variables
        var delegateToReturn: ___VARIABLE_productName___Delegate?
}

extension ___VARIABLE_productName___WireframeToPresenterInterfaceMock: ___VARIABLE_productName___WireframeToPresenterInterface {
        weak var delegate: ___VARIABLE_productName___Delegate? {
                get {
                        functionsCalled.append(#function)
                        return delegateToReturn
                }
        }

        func set(delegate newDelegate: ___VARIABLE_productName___Delegate?) {
                functionsCalled.append(#function)
                modifiedDelegate = newDelegate
        }
}
