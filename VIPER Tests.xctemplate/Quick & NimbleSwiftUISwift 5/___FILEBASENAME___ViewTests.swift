import Nimble
import Quick

@testable import ___PROJECTNAME___

// swiftlint:disable:next type_body_length
class ___VARIABLE_productName___ViewSpec: QuickSpec {
    // swiftlint:disable:next function_body_length
    override func spec() {
        var view: ___VARIABLE_productName___View!
        
        var presenterMock: ___VARIABLE_productName___ViewToPresenterInterfaceMock!
        
        describe("a ___VARIABLE_productName___ view") {
            beforeEach { @MainActor in
                view = ___VARIABLE_productName___View()
                presenterMock = ___VARIABLE_productName___ViewToPresenterInterfaceMock()
                
                _ = view.view
                
                view.presenter = presenterMock
            }
            
            // MARK: - Operational
            
            // MARK: - Presenter to View Interface
        }
    }
}

// MARK: - Communicaiton Interface Mocks
// MARK: - Navigation
class ___VARIABLE_productName___NavigationInterfaceMock {
    var functionsCalled = [String]()
    
    // MARK: - Input Variables
}

extension ___VARIABLE_productName___NavigationInterfaceMock: ___VARIABLE_productName___NavigationInterface {
    
}

// MARK: - View to Presenter
class ___VARIABLE_productName___ViewToPresenterInterfaceMock {
    var functionsCalled = [String]()
    
    // MARK: - Input Variables
}

extension ___VARIABLE_productName___ViewToPresenterInterfaceMock: ___VARIABLE_productName___ViewToPresenterInterface {
    
}

// swiftlint:disable:this file_length
