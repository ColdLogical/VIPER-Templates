import Foundation

class ___FILEBASENAMEASIDENTIFIER___Presenter {
        // MARK: - VIPER Stack
        weak var interactor: ___FILEBASENAMEASIDENTIFIER___PresenterToInteractorInterface!
        weak var view: ___FILEBASENAMEASIDENTIFIER___PresenterToViewInterface!
        weak var wireframe: ___FILEBASENAMEASIDENTIFIER___PresenterToWireframeInterface!

        // MARK: - Instance Variables
        weak var delegate: ___FILEBASENAMEASIDENTIFIER___Delegate?
        var moduleWireframe: ___FILEBASENAMEASIDENTIFIER___ {
                get {
                        let mw = (self.wireframe as? ___FILEBASENAMEASIDENTIFIER___)!
                        return mw
                }
        }

        // MARK: - Operational

}

// MARK: - Interactor to Presenter Interface
extension ___FILEBASENAMEASIDENTIFIER___Presenter: ___FILEBASENAMEASIDENTIFIER___InteractorToPresenterInterface {

}

// MARK: - View to Presenter Interface
extension ___FILEBASENAMEASIDENTIFIER___Presenter: ___FILEBASENAMEASIDENTIFIER___ViewToPresenterInterface {

}

// MARK: - Wireframe to Presenter Interface
extension ___FILEBASENAMEASIDENTIFIER___Presenter: ___FILEBASENAMEASIDENTIFIER___WireframeToPresenterInterface {
        func set(delegate newDelegate: ___FILEBASENAMEASIDENTIFIER___Delegate?) {
                delegate = newDelegate
        }
}
