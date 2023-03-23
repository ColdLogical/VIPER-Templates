import Nimble
import Quick

@testable import ___PROJECTNAME___

// swiftlint:disable:next type_body_length
class ___VARIABLE_productName___InteractorSpec: QuickSpec {
    // swiftlint:disable:next function_body_length
    override func spec() {
        var interactor: ___VARIABLE_productName___Interactor!
        
        var presenterMock: ___VARIABLE_productName___InteractorToPresenterInterfaceMock!
        
        describe("a ___VARIABLE_productName___ interactor") {
            beforeEach {
                interactor = ___VARIABLE_productName___Interactor()
                presenterMock = ___VARIABLE_productName___InteractorToPresenterInterfaceMock()
                
                interactor.presenter = presenterMock
            }
            
            // MARK: - Operational
            
            // MARK: - Presenter to Interactor Interface
        }
    }
}

// MARK: - Communicaiton Interface Mocks
// MARK: - Interactor to Presenter
class ___VARIABLE_productName___InteractorToPresenterInterfaceMock {
    var functionsCalled = [String]()
    
    // MARK: - Input Variables
}

extension ___VARIABLE_productName___InteractorToPresenterInterfaceMock: ___VARIABLE_productName___InteractorToPresenterInterface {
    
}

// swiftlint:disable:this file_length
