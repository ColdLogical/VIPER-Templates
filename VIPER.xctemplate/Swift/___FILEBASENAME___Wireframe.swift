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
        var interactor = ___FILEBASENAMEASIDENTIFIER___Interactor()
        var presenter = ___FILEBASENAMEASIDENTIFIER___Presenter()
        var view = ___FILEBASENAMEASIDENTIFIER___View()
        
        // MARK: - Instance Variables
        var delegate: ___FILEBASENAMEASIDENTIFIER___Delegate?
        
        // MARK: - Operational
        override init() {
                super.init()
                
                let i = interactor
                let p = presenter
                let v = view
                
                i.presenter = p
                
                p.interactor = i
                p.view = v
                p.wireframe = self
                
                v.presenter = p
        }
        
        // MARK: Wireframe Interface
        
}
