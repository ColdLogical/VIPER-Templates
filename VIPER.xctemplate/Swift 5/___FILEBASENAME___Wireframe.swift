import UIKit

class ___VARIABLE_productName___Wireframe {
        // MARK: - VIPER Stack
        lazy var moduleInteractor = ___VARIABLE_productName___Interactor()
        // Uncomment to use a navigationController from storyboard
        /*
        lazy var moduleNavigationController: UINavigationController = {
                let sb = ___VARIABLE_productName___Wireframe.storyboard()
                let nc = (sb.instantiateViewController(withIdentifier: ___VARIABLE_productName___Constants.navigationControllerIdentifier) as? UINavigationController)!
                return nc
        }()
        */
        lazy var modulePresenter = ___VARIABLE_productName___Presenter()
        lazy var moduleView: ___VARIABLE_productName___View = {
                // Uncomment the commented line below and delete the storyboard
                //      instantiation to use a navigationController from storyboard
                //let vc = self.moduleNavigationController.viewControllers[0] as! ___VARIABLE_productName___View
                let sb = ___VARIABLE_productName___Wireframe.storyboard()
                let vc = (sb.instantiateViewController(withIdentifier: ___VARIABLE_productName___Constants.viewIdentifier) as? ___VARIABLE_productName___View)!
                _ = vc.view
                return vc
        }()

        // MARK: - Computed VIPER Variables
        lazy var presenter: ___VARIABLE_productName___WireframeToPresenterInterface = self.modulePresenter
        lazy var view: ___VARIABLE_productName___NavigationInterface = self.moduleView

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
                return UIStoryboard(name: ___VARIABLE_productName___Constants.storyboardIdentifier,
                                    bundle: Bundle(for: ___VARIABLE_productName___Wireframe.self))
    	}

        // MARK: - Operational

}

// MARK: - Module Interface
extension ___VARIABLE_productName___Wireframe: ___VARIABLE_productName___ {
        var delegate: ___VARIABLE_productName___Delegate? {
                get {
                        return presenter.delegate
                }
                set {
                        presenter.set(delegate: newValue)
                }
        }
}

// MARK: - Presenter to Wireframe Interface
extension ___VARIABLE_productName___Wireframe: ___VARIABLE_productName___PresenterToWireframeInterface {

}

// MARK: - Communication Interfaces
// Interface Abstraction for working with the VIPER Module
protocol ___VARIABLE_productName___: class {
        var delegate: ___VARIABLE_productName___Delegate? { get set }
}

// VIPER Module Constants
struct ___VARIABLE_productName___Constants {
        // Uncomment to utilize a navigation controller from storyboard
        //static let navigationControllerIdentifier = "___VARIABLE_productName___NavigationController"
        static let storyboardIdentifier = "___VARIABLE_productName___"
        static let viewIdentifier = "___VARIABLE_productName___View"
}

// VIPER Interface for manipulating the navigation of the view
protocol ___VARIABLE_productName___NavigationInterface: class {

}

// VIPER Interface for communication from Wireframe -> Presenter
protocol ___VARIABLE_productName___WireframeToPresenterInterface: class {
        var delegate: ___VARIABLE_productName___Delegate? { get }
        func set(delegate newDelegate: ___VARIABLE_productName___Delegate?)
}
