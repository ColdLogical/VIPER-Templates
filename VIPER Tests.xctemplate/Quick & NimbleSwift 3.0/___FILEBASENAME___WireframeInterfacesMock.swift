@testable import ___PROJECTNAME___

class ___FILEBASENAMEASIDENTIFIER___WireframeInterfacesMock {
        var functionsCalled = [String]()

        // MARK: - Input Variables
}

extension ___FILEBASENAMEASIDENTIFIER___WireframeInterfacesMock: ___FILEBASENAMEASIDENTIFIER___ {
        var delegate: ___FILEBASENAMEASIDENTIFIER___Delegate? {
                get {
                        functionsCalled.append(#function)
                        return nil
                }
            set {
                functionsCalled.append(#function)
            }
        }
}

extension ___FILEBASENAMEASIDENTIFIER___WireframeInterfacesMock: ___FILEBASENAMEASIDENTIFIER___PresenterToWireframeInterface {

}
