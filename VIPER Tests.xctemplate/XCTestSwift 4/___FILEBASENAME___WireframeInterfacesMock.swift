@testable import ___PROJECTNAME___

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
