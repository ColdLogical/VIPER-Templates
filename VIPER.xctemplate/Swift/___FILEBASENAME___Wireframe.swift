//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

import UIKit

class ___FILEBASENAMEASIDENTIFIER___Wireframe: NSObject, ___FILEBASENAMEASIDENTIFIER___WireframeInterface {
        // MARK: - VIPER Stack
        lazy var moduleInteractor = ___FILEBASENAMEASIDENTIFIER___Interactor()
        lazy var modulePresenter = ___FILEBASENAMEASIDENTIFIER___Presenter()
        lazy var moduleView: ___FILEBASENAMEASIDENTIFIER___View = {
                let sb = ___FILEBASENAMEASIDENTIFIER___Wireframe.storyboard()
                let vc = sb.instantiateViewControllerWithIdentifier(k___FILEBASENAMEASIDENTIFIER___ViewIdentifier) as! ___FILEBASENAMEASIDENTIFIER___View
                return vc
        }()
        lazy var presenter : ___FILEBASENAMEASIDENTIFIER___Routing = self.modulePresenter

        // Uncomment and delete the moduleView line above to use a navigationController from storyboard
        /*
        var moduleNavigationController: UINavigationController = {
                let sb = ___FILEBASENAMEASIDENTIFIER___Wireframe.storyboard()
                var v = sb.instantiateViewControllerWithIdentifier("___FILEBASENAMEASIDENTIFIER___NavigationController") as! UINavigationController
                return v
        }()
        var moduleView: ___FILEBASENAMEASIDENTIFIER___View = moduleNavigationController.viewControllers[0]
        */

        
        // MARK: - Instance Variables
        var delegate: ___FILEBASENAMEASIDENTIFIER___Delegate?
        
        // MARK: - Operational
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
                
                presenter = p
        }

	func storyboard() -> UIStoryboard {
                return UIStoryboard(name: k___FILEBASENAMEASIDENTIFIER___Storyboard, bundle: NSBundle.mainBundle());
	}
        
        // MARK: - Wireframe Interface
        
}
