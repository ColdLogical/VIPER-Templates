//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

@testable import ___PROJECTNAME___

class ___FILEBASENAMEASIDENTIFIER___WireframeInterfacesMock {
        var functionsCalled = [String]()

        // MARK: - Input Variables
}

extension ___FILEBASENAMEASIDENTIFIER___WireframeInterfacesMock: ___FILEBASENAMEASIDENTIFIER___ModuleInterface {
        var delegate: ___FILEBASENAMEASIDENTIFIER___Delegate? {
                get {
                        return nil
                }
                set { }
        }
}

extension ___FILEBASENAMEASIDENTIFIER___WireframeInterfacesMock: ___FILEBASENAMEASIDENTIFIER___PresenterToWireframeInterface {

}
