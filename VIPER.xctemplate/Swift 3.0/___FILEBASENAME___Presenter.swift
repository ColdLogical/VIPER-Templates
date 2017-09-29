import Foundation

class ___VARIABLE_moduleName___Presenter {
        // MARK: - VIPER Stack
        weak var interactor: ___VARIABLE_moduleName___PresenterToInteractorInterface!
        weak var view: ___VARIABLE_moduleName___PresenterToViewInterface!
        weak var wireframe: ___VARIABLE_moduleName___PresenterToWireframeInterface!

        // MARK: - Instance Variables
        weak var delegate: ___VARIABLE_moduleName___Delegate?
        var moduleWireframe: ___VARIABLE_moduleName___ {
                get {
                        let mw = (self.wireframe as? ___VARIABLE_moduleName___)!
                        return mw
                }
        }

        // MARK: - Operational

}

// MARK: - Interactor to Presenter Interface
extension ___VARIABLE_moduleName___Presenter: ___VARIABLE_moduleName___InteractorToPresenterInterface {

}

// MARK: - View to Presenter Interface
extension ___VARIABLE_moduleName___Presenter: ___VARIABLE_moduleName___ViewToPresenterInterface {

}

// MARK: - Wireframe to Presenter Interface
extension ___VARIABLE_moduleName___Presenter: ___VARIABLE_moduleName___WireframeToPresenterInterface {
        func set(delegate newDelegate: ___VARIABLE_moduleName___Delegate?) {
                delegate = newDelegate
        }
}
