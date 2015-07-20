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
        
        // MARK: Wireframe Interface
        
}
