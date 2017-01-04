//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

@testable import ___PROJECTNAME___

class ___FILEBASENAMEASIDENTIFIER___WireframeToPresenterInterfaceMock {
        var functionsCalled = [String]()

        // MARK: - Input Variables
        var modifiedDelegate: ___FILEBASENAMEASIDENTIFIER___Delegate?
}

extension ___FILEBASENAMEASIDENTIFIER___WireframeToPresenterInterfaceMock: ___FILEBASENAMEASIDENTIFIER___WireframeToPresenterInterface {
        weak var delegate: ___FILEBASENAMEASIDENTIFIER___Delegate? {
                get {
                        functionsCalled.append("delegate:get")
                        return nil
                }
        }

        func set(delegate newDelegate: ___FILEBASENAMEASIDENTIFIER___Delegate?) {
                functionsCalled.append("set:delegate")

                modifiedDelegate = newDelegate
        }
}
