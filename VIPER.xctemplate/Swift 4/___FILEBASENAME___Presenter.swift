import Foundation

class ___VARIABLE_productName___Presenter {
        // MARK: - VIPER Stack
        weak var interactor: ___VARIABLE_productName___PresenterToInteractorInterface!
        weak var view: ___VARIABLE_productName___PresenterToViewInterface!
        weak var wireframe: ___VARIABLE_productName___PresenterToWireframeInterface!

        // MARK: - Instance Variables
        weak var delegate: ___VARIABLE_productName___Delegate?
        var moduleWireframe: ___VARIABLE_productName___ {
                get {
                        let mw = (self.wireframe as? ___VARIABLE_productName___)!
                        return mw
                }
        }

        // MARK: - Operational

}

// MARK: - Interactor to Presenter Interface
extension ___VARIABLE_productName___Presenter: ___VARIABLE_productName___InteractorToPresenterInterface {

}

// MARK: - View to Presenter Interface
extension ___VARIABLE_productName___Presenter: ___VARIABLE_productName___ViewToPresenterInterface {

}

// MARK: - Wireframe to Presenter Interface
extension ___VARIABLE_productName___Presenter: ___VARIABLE_productName___WireframeToPresenterInterface {
        func set(delegate newDelegate: ___VARIABLE_productName___Delegate?) {
                delegate = newDelegate
        }
}

// MARK: - Communication Interfaces
// VIPER Interface to the Module
protocol ___VARIABLE_productName___Delegate: class {

}

// VIPER Interface for communication from Presenter to Interactor
protocol ___VARIABLE_productName___PresenterToInteractorInterface: class {

}

// VIPER Interface for communication from Presenter -> Wireframe
protocol ___VARIABLE_productName___PresenterToWireframeInterface: class {

}

// VIPER Interface for communication from Presenter -> View
protocol ___VARIABLE_productName___PresenterToViewInterface: class {

}
