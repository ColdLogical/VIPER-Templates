//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

import Foundation

class ___FILEBASENAMEASIDENTIFIER___Presenter : NSObject,
        ___FILEBASENAMEASIDENTIFIER___InteractorToPresenterInterface,
        ___FILEBASENAMEASIDENTIFIER___ViewToPresenterInterface,
        ___FILEBASENAMEASIDENTIFIER___WireframeToPresenterInterface
        {
        // MARK: - VIPER Stack
        lazy var interactor : ___FILEBASENAMEASIDENTIFIER___PresenterToInteractorInterface = ___FILEBASENAMEASIDENTIFIER___Interactor()
        lazy var view : ___FILEBASENAMEASIDENTIFIER___PresenterToViewInterface = ___FILEBASENAMEASIDENTIFIER___View()
        lazy var wireframe : ___FILEBASENAMEASIDENTIFIER___PresesnterToWireframeInterface = ___FILEBASENAMEASIDENTIFIER___Wireframe()
        
        // MARK: - Instance Variables
        
        // MARK: - Operational
        
        // MARK: - Interactor Output
        
        // MARK: - Presenter Interface
        
        // MARK: - Routing
        
}
