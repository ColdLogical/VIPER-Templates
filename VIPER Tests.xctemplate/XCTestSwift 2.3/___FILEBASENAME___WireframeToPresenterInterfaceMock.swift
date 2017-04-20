@testable import ___PROJECTNAME___

class ___FILEBASENAMEASIDENTIFIER___WireframeToPresenterInterfaceMock {
        var functionsCalled = [String]()

        // MARK: - Input Variables
        var modifiedDelegate: ___FILEBASENAMEASIDENTIFIER___Delegate?

        // MARK: - Output Variables
        var delegateToReturn: ___FILEBASENAMEASIDENTIFIER___Delegate?
}

extension ___FILEBASENAMEASIDENTIFIER___WireframeToPresenterInterfaceMock: ___FILEBASENAMEASIDENTIFIER___WireframeToPresenterInterface {
        weak var delegate: ___FILEBASENAMEASIDENTIFIER___Delegate? {
                get {
                        functionsCalled.append(#function)
                        return delegateToReturn
                }
        }

        func set(delegate newDelegate: ___FILEBASENAMEASIDENTIFIER___Delegate?) {
                functionsCalled.append(#function)
                modifiedDelegate = newDelegate
        }
}
