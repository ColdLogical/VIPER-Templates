import UIKit

class ___VARIABLE_moduleName___Wireframe {
        // MARK: - VIPER Stack
        lazy var moduleInteractor = ___VARIABLE_moduleName___Interactor()
        // Uncomment to use a navigationController from storyboard
        /*
        lazy var moduleNavigationController: UINavigationController = {
                let sb = ___VARIABLE_moduleName___Wireframe.storyboard()
                let nc = (sb.instantiateViewController(withIdentifier: ___VARIABLE_moduleName___Constants.navigationControllerIdentifier) as? UINavigationController)!
                return nc
        }()
        */
        lazy var modulePresenter = ___VARIABLE_moduleName___Presenter()
        lazy var moduleView: ___VARIABLE_moduleName___View = {
                // Uncomment the commented line below and delete the storyboard
                //      instantiation to use a navigationController from storyboard
                //let vc = self.moduleNavigationController.viewControllers[0] as! ___VARIABLE_moduleName___View
                let sb = ___VARIABLE_moduleName___Wireframe.storyboard()
                let vc = (sb.instantiateViewController(withIdentifier: ___VARIABLE_moduleName___Constants.viewIdentifier) as? ___VARIABLE_moduleName___View)!
                _ = vc.view
                return vc
        }()

        // MARK: - Computed VIPER Variables
        lazy var presenter: ___VARIABLE_moduleName___WireframeToPresenterInterface = self.modulePresenter
        lazy var view: ___VARIABLE_moduleName___NavigationInterface = self.moduleView

        // MARK: - Instance Variables

        // MARK: - Initialization
        init() {
                let i = moduleInteractor
                let p = modulePresenter
                let v = moduleView

                i.presenter = p

                p.interactor = i
                p.view = v
                p.wireframe = self

                v.presenter = p
        }

    	class func storyboard() -> UIStoryboard {
                return UIStoryboard(name: ___VARIABLE_moduleName___Constants.storyboardIdentifier,
                                    bundle: Bundle(for: ___VARIABLE_moduleName___Wireframe.self))
    	}

        // MARK: - Operational

}

// MARK: - Module Interface
extension ___VARIABLE_moduleName___Wireframe: ___VARIABLE_moduleName___ {
        var delegate: ___VARIABLE_moduleName___Delegate? {
                get {
                        return presenter.delegate
                }
                set {
                        presenter.set(delegate: newValue)
                }
        }
}

// MARK: - Presenter to Wireframe Interface
extension ___VARIABLE_moduleName___Wireframe: ___VARIABLE_moduleName___PresenterToWireframeInterface {

}
