import Testing

@testable import ___PROJECTNAME___

struct ___VARIABLE_productName___ViewTests {
    let sut: ___VARIABLE_productName___View!
    
    let presenterMock: ___VARIABLE_productName___ViewToPresenterInterfaceMock!
    
    init() {
        sut = ___VARIABLE_productName___View()
        presenterMock = ___VARIABLE_productName___ViewToPresenterInterfaceMock()
        
        sut.presenter = presenterMock
    }
            
    // MARK: - Operational
    
    // MARK: - Presenter to View Interface
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
