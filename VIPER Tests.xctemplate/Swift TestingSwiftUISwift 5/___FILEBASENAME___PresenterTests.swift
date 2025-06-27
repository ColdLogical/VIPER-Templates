import Testing

@testable import ___PROJECTNAME___

struct ___VARIABLE_productName___PresenterTests {
    let sut: ___VARIABLE_productName___Presenter!
    
    let delegateMock: ___VARIABLE_productName___DelegateMock!
    let interactorMock: ___VARIABLE_productName___PresenterToInteractorInterfaceMock!
    let viewMock: ___VARIABLE_productName___PresenterToViewInterfaceMock!
    let wireframeMock: ___VARIABLE_productName___WireframeInterfacesMock!
    
    init() {
        sut = ___VARIABLE_productName___Presenter()
        delegateMock = ___VARIABLE_productName___DelegateMock()
        interactorMock = ___VARIABLE_productName___PresenterToInteractorInterfaceMock()
        viewMock = ___VARIABLE_productName___PresenterToViewInterfaceMock()
        wireframeMock = ___VARIABLE_productName___WireframeInterfacesMock()
        
        sut.delegate = delegateMock
        sut.interactor = interactorMock
        sut.view = viewMock
        sut.wireframe = wireframeMock
    }
    
    // MARK: - Operational
    @Test("module wireframe computed variable it returns the wireframe as a ___VARIABLE_productName___ object")
    func moduleWireframeTest() {
        // Arrange
        
        // Act
        let moduleWireframe = sut.moduleWireframe
        
        // Assert
        #expect(moduleWireframe === wireframeMock)
    }
    
    // MARK: - Interactor to Presenter Interface
    
    // MARK: - View to Presenter Interface
    
    // MARK: - Wireframe to Presenter Interface
    @Test("set delegate function sets the input as the new delegate")
    func setDelegateTest() {
        // Arrange
        sut.delegate = nil
        let testDelegate = ___VARIABLE_productName___DelegateMock()

        // Act
        sut.set(delegate: testDelegate)
        
        // Assert
        #expect(sut.delegate === testDelegate)
    }
}

// MARK: - Communicaiton Interface Mocks
// MARK: - Delegate
class ___VARIABLE_productName___DelegateMock {
    var functionsCalled = [String]()
    
    // MARK: - Input Variables
}

extension ___VARIABLE_productName___DelegateMock: ___VARIABLE_productName___Delegate {
    
}

// MARK: - Present to Interactor
class ___VARIABLE_productName___PresenterToInteractorInterfaceMock {
    var functionsCalled = [String]()
    
    // MARK: - Input Variables
}

extension ___VARIABLE_productName___PresenterToInteractorInterfaceMock: ___VARIABLE_productName___PresenterToInteractorInterface {
    
}

// MARK: - Present to View
class ___VARIABLE_productName___PresenterToViewInterfaceMock {
    var functionsCalled = [String]()
    
    // MARK: - Input Variables
}

extension ___VARIABLE_productName___PresenterToViewInterfaceMock: ___VARIABLE_productName___PresenterToViewInterface {
    
}

// MARK: - Present to Wireframe
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
