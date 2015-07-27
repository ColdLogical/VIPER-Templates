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
        var moduleInteractor = ___FILEBASENAMEASIDENTIFIER___Interactor()
        var modulePresenter = ___FILEBASENAMEASIDENTIFIER___Presenter()
        var moduleView = ___FILEBASENAMEASIDENTIFIER___View()
        var presenter : ___FILEBASENAMEASIDENTIFIER___Routing?

        // Uncomment and delete the moduleView line above to use a navigationController from storyboard
        /*
        var moduleNavigationController = storyboard.instantiateViewControllerWithIdentifier(k___FILEBASENAMEASIDENTIFIER___NavigationController)
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
                
                self.presenter = p
        }

	func storyboard() -> UIStoryboard {
                return UIStoryboard(name: k___FILEBASENAMEASIDENTIFIER___Storyboard, bundle: NSBundle.mainBundle());
	}
        
        // MARK: Wireframe Interface
        
}
