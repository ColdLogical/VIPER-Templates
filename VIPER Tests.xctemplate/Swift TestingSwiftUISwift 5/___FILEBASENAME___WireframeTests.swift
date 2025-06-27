import Testing

@testable import ___PROJECTNAME___

@MainActor
struct ___VARIABLE_productName___WireframeTests {
    let sut: ___VARIABLE_productName___Wireframe!
    
    let presenterMock: ___VARIABLE_productName___WireframeToPresenterInterfaceMock!
    let viewMock: ___VARIABLE_productName___NavigationInterfaceMock!

    init() {
        sut = ___VARIABLE_productName___Wireframe()
        presenterMock = ___VARIABLE_productName___WireframeToPresenterInterfaceMock()
        viewMock = ___VARIABLE_productName___NavigationInterfaceMock()
        
        sut.presenter = presenterMock
        sut.view = viewMock
    }
    
    @Test("init function instantiates and connects the VIPER stack")
    func initTest() {
        // Arrange
        
        // Act
        
        // Assert
        #expect(sut.moduleInteractor.presenter === sut.modulePresenter)
        #expect(sut.modulePresenter.interactor === sut.moduleInteractor)
        #expect(sut.modulePresenter.view === sut.moduleView)
        #expect(sut.modulePresenter.wireframe === sut)
        #expect(sut.moduleView.presenter === sut.modulePresenter)
    }
    
    // MARK: - Class Functions
    
    // MARK: - Operational
    @Test("get delegate function should ask presenter for the module's delegate")
    func getDelegateTest() {
        // Arrange
        
        // Act
        _ = sut.delegate
        
        // Assert
        #expect(presenterMock.functionsCalled.contains("delegate"))
    }
            
    @Test("set delegate function tells presenter to set the module delegate")
    func setDelegateTest() {
        // Arrange
        let delegateMock = ___VARIABLE_productName___DelegateMock()
        
        // Act
        sut.delegate = delegateMock
        
        // Assert
        #expect(presenterMock.functionsCalled.contains("set(delegate:)"))
        #expect(presenterMock.modifiedDelegate === delegateMock)
    }
    
    // MARK: - Module Interface
    
    // MARK: - Presenter to Wireframe Interface
}

// MARK: - Communicaiton Interface Mocks
// MARK: - Wireframe to Presenter
class ___VARIABLE_productName___WireframeToPresenterInterfaceMock {
    var functionsCalled = [String]()
    
    // MARK: - Input Variables
    var modifiedDelegate: ___VARIABLE_productName___Delegate?
    
    // MARK: - Output Variables
    var delegateToReturn: ___VARIABLE_productName___Delegate?
}

extension ___VARIABLE_productName___WireframeToPresenterInterfaceMock: ___VARIABLE_productName___WireframeToPresenterInterface {
    func beganPresenting() {
        functionsCalled.append(#function)
    }
    
    weak var delegate: ___VARIABLE_productName___Delegate? {
        get {
            functionsCalled.append(#function)
            return delegateToReturn
        }
    }
    
    func set(delegate newDelegate: ___VARIABLE_productName___Delegate?) {
        functionsCalled.append(#function)
        modifiedDelegate = newDelegate
    }
}
