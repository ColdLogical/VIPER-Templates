//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

import UIKit

class ___FILEBASENAMEASIDENTIFIER___ : NSObject,
        ___FILEBASENAMEASIDENTIFIER___ModuleInterface,
        ___FILEBASENAMEASIDENTIFIER___PresesnterToWireframeInterface
        {
        // MARK: - VIPER Stack
        lazy var moduleInteractor = ___FILEBASENAMEASIDENTIFIER___Interactor()
        // Uncomment the comment lines and delete the moduleView line default code to use a navigationController from storyboard
        /*
        lazy var moduleNavigationController: UINavigationController = {
                let sb = ___FILEBASENAMEASIDENTIFIER___Wireframe.storyboard()
                let v = sb.instantiateViewControllerWithIdentifier(k___FILEBASENAMEASIDENTIFIER___NavigationControllerIdentifier) as! UINavigationController
                return v
        }()
        */
        lazy var modulePresenter = ___FILEBASENAMEASIDENTIFIER___Presenter()
        /*
        lazy var moduleView: ___FILEBASENAMEASIDENTIFIER___View = {
                return self.moduleNavigationController.viewControllers[0] as! ___FILEBASENAMEASIDENTIFIER___View
        }()
        */
        
        lazy var moduleView: ___FILEBASENAMEASIDENTIFIER___View = {
                let sb = ___FILEBASENAMEASIDENTIFIER___Wireframe.storyboard()
                let vc = sb.instantiateViewControllerWithIdentifier(k___FILEBASENAMEASIDENTIFIER___ViewIdentifier) as! ___FILEBASENAMEASIDENTIFIER___View
                return vc
        }()
        lazy var presenter : ___FILEBASENAMEASIDENTIFIER___WireframeToPresenterInterface = self.modulePresenter
        lazy var view : ___FILEBASENAMEASIDENTIFIER___NavigationInterface = self.moduleView

        // MARK: - Instance Variables
        var delegate: ___FILEBASENAMEASIDENTIFIER___Delegate?
        
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
                
                presenter = p
                view = v
        }

	class func storyboard() -> UIStoryboard {
                return UIStoryboard(name: k___FILEBASENAMEASIDENTIFIER___StoryboardIdentifier, bundle: NSBundle(forClass: ___FILEBASENAMEASIDENTIFIER___Wireframe.self))
	}
        
        // MARK: - Operational
        
        // MARK: - Module Interface
        
        // MARK: - Wireframe Interface
        
}
