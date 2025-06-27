import Testing

@testable import ___PROJECTNAME___

struct ___VARIABLE_productName___InteractorTests {
    let sut: ___VARIABLE_productName___Interactor!
    
    let presenterMock: ___VARIABLE_productName___InteractorToPresenterInterfaceMock!

    init() {
        sut = ___VARIABLE_productName___Interactor()
        presenterMock = ___VARIABLE_productName___InteractorToPresenterInterfaceMock()
        
        sut.presenter = presenterMock
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
