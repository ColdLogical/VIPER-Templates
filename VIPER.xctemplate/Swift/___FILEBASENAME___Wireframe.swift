//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

import UIKit

class ___FILEBASENAMEASIDENTIFIER___Wireframe : NSObject
        , ___FILEBASENAMEASIDENTIFIER___ModuleInterface
        , ___FILEBASENAMEASIDENTIFIER___PresenterToWireframeInterface
        {
        // MARK: - VIPER Stack
        lazy var moduleInteractor = ___FILEBASENAMEASIDENTIFIER___Interactor()
        // Uncomment to use a navigationController from storyboard
        /*
        lazy var moduleNavigationController: UINavigationController = {
                let sb = ___FILEBASENAMEASIDENTIFIER___Wireframe.storyboard()
                let nc = sb.instantiateViewController(withIdentifier: k___FILEBASENAMEASIDENTIFIER___NavigationControllerIdentifier) as! UINavigationController
                return nc
        }()
        */
        lazy var modulePresenter = ___FILEBASENAMEASIDENTIFIER___Presenter()
        lazy var moduleView: ___FILEBASENAMEASIDENTIFIER___View = {
                // Uncomment the commented line below and delete the storyboard
                //      instantiation to use a navigationController from storyboard
                //let vc = self.moduleNavigationController.viewControllers[0] as! ___FILEBASENAMEASIDENTIFIER___View
                let sb = ___FILEBASENAMEASIDENTIFIER___Wireframe.storyboard()
                let vc = sb.instantiateViewController(withIdentifier: k___FILEBASENAMEASIDENTIFIER___ViewIdentifier) as! ___FILEBASENAMEASIDENTIFIER___View
                let _ = vc.view
                return vc
        }()

        // MARK: - Computed VIPER Variables
        var presenter : ___FILEBASENAMEASIDENTIFIER___WireframeToPresenterInterface {
                get {
                    return self.modulePresenter
                }
        }
        var view : ___FILEBASENAMEASIDENTIFIER___NavigationInterface {
                get {
                        return self.moduleView
                }
        }

        // MARK: - Instance Variables
        var delegate: ___FILEBASENAMEASIDENTIFIER___Delegate? {
                get {
                        return presenter.delegate
                }
                set {
                        presenter.set(delegate: newValue)
                }
        }
        
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
                                    bundle: Bundle(for: ___FILEBASENAMEASIDENTIFIER___Wireframe.self))
    	}
        
        // MARK: - Operational
        
        // MARK: - Module Interface
        
        // MARK: - Wireframe Interface
        
}
