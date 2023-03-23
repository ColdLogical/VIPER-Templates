import Nimble
import Quick

@testable import ___PROJECTNAME___

// swiftlint:disable:next type_body_length
class ___VARIABLE_productName___WireframeSpec: QuickSpec {
    // swiftlint:disable:next function_body_length
    override func spec() {
        var wireframe: ___VARIABLE_productName___Wireframe!
        
        var presenterMock: ___VARIABLE_productName___WireframeToPresenterInterfaceMock!
        var viewMock: ___VARIABLE_productName___NavigationInterfaceMock!
        
        describe("a ___VARIABLE_productName___ wireframe") {
            beforeEach { @MainActor in
                wireframe = ___VARIABLE_productName___Wireframe()
                presenterMock = ___VARIABLE_productName___WireframeToPresenterInterfaceMock()
                viewMock = ___VARIABLE_productName___NavigationInterfaceMock()
                
                wireframe.presenter = presenterMock
                wireframe.view = viewMock
            }
            
            // MARK: - Init
            describe("init function") {
                it("instantiates and connect the VIPER stack") { @MainActor in
                    // Arrange
                    wireframe = ___VARIABLE_productName___Wireframe()
                    
                    // Act
                    
                    // Assert
                    expect(wireframe).toNot(beNil())
                    expect(wireframe.moduleInteractor).toNot(beNil())
                    expect(wireframe.modulePresenter).toNot(beNil())
                    expect(wireframe.moduleView).toNot(beNil())
                    
                    expect(wireframe.moduleInteractor.presenter).to(beIdenticalTo(wireframe.modulePresenter))
                    
                    expect(wireframe.modulePresenter.interactor).to(beIdenticalTo(wireframe.moduleInteractor))
                    expect(wireframe.modulePresenter.view).to(beIdenticalTo(wireframe.moduleView))
                    expect(wireframe.modulePresenter.wireframe).to(beIdenticalTo(wireframe))
                    
                    expect(wireframe.moduleView.presenter).to(beIdenticalTo(wireframe.modulePresenter))
                    
                    expect(wireframe.presenter).to(beIdenticalTo(wireframe.modulePresenter))
                    expect(wireframe.view).to(beIdenticalTo(wireframe.moduleView))
                }
            }
            
            // MARK: - Class Functions
            
            // MARK: - Operational
            describe("get delegate function") {
                it("should ask presenter for the module's delegate") {
                    // Arrange
                    
                    // Act
                    _ = wireframe.delegate
                    
                    // Assert
                    expect(presenterMock.functionsCalled).to(contain("delegate"))
                }
            }
            
            describe("set delegate function") {
                it("tells presenter to set the module delegate") {
                    // Arrange
                    let delegateMock = ___VARIABLE_productName___DelegateMock()
                    
                    // Act
                    wireframe.delegate = delegateMock
                    
                    // Assert
                    expect(presenterMock.functionsCalled).to(contain("set(delegate:)"))
                    expect(presenterMock.modifiedDelegate).to(beIdenticalTo(delegateMock))
                }
            }
            
            // MARK: - Module Interface
            
            // MARK: - Presenter to Wireframe Interface
        }
    }
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

// swiftlint:disable:this file_length
