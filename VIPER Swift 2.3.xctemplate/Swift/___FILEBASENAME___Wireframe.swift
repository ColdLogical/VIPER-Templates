//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

import UIKit

class ___FILEBASENAMEASIDENTIFIER___Wireframe: NSObject {
        // MARK: - VIPER Stack
        lazy var moduleInteractor = ___FILEBASENAMEASIDENTIFIER___Interactor()
        // Uncomment to use a navigationController from storyboard
        /*
        lazy var moduleNavigationController: UINavigationController = {
                let sb = ___FILEBASENAMEASIDENTIFIER___Wireframe.storyboard()
                let nc = (sb.instantiateViewControllerWithIdentifier(k___FILEBASENAMEASIDENTIFIER___NavigationControllerIdentifier) as? UINavigationController)!
                return nc
        }()
        */
        lazy var modulePresenter = ___FILEBASENAMEASIDENTIFIER___Presenter()
        lazy var moduleView: ___FILEBASENAMEASIDENTIFIER___View = {
                // Uncomment the commented line below and delete the storyboard
                //      instantiation to use a navigationController from storyboard
                //let vc = self.moduleNavigationController.viewControllers[0] as! ___FILEBASENAMEASIDENTIFIER___View
                let sb = ___FILEBASENAMEASIDENTIFIER___Wireframe.storyboard()
                let vc = (sb.instantiateViewControllerWithIdentifier(k___FILEBASENAMEASIDENTIFIER___ViewIdentifier) as? ___FILEBASENAMEASIDENTIFIER___View)!
                let _ = vc.view
                return vc
        }()

        // MARK: - Computed VIPER Variables
        lazy var presenter: ___FILEBASENAMEASIDENTIFIER___WireframeToPresenterInterface = self.modulePresenter
        lazy var view: ___FILEBASENAMEASIDENTIFIER___NavigationInterface = self.moduleView

        // MARK: - Instance Variables

        // MARK: - Initialization
        override init() {
                super.init()

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
                return UIStoryboard(name: k___FILEBASENAMEASIDENTIFIER___StoryboardIdentifier,
                                    bundle: NSBundle(forClass: ___FILEBASENAMEASIDENTIFIER___Wireframe.self))
    	}

        // MARK: - Operational

}

// MARK: - Module Interface
extension ___FILEBASENAMEASIDENTIFIER___Wireframe: ___FILEBASENAMEASIDENTIFIER___ModuleInterface {
        var delegate: ___FILEBASENAMEASIDENTIFIER___Delegate? {
                get {
                        return presenter.delegate
                }
                set {
                        presenter.set(delegate: newValue)
                }
        }
}

// MARK: - Wireframe Interface
extension ___FILEBASENAMEASIDENTIFIER___Wireframe: ___FILEBASENAMEASIDENTIFIER___PresenterToWireframeInterface {

}
