//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

import Foundation

class ___FILEBASENAMEASIDENTIFIER___Presenter : NSObject
        , ___FILEBASENAMEASIDENTIFIER___InteractorToPresenterInterface
        , ___FILEBASENAMEASIDENTIFIER___ViewToPresenterInterface
        , ___FILEBASENAMEASIDENTIFIER___WireframeToPresenterInterface
        {
        // MARK: - VIPER Stack
        weak var interactor : ___FILEBASENAMEASIDENTIFIER___PresenterToInteractorInterface!
        weak var view : ___FILEBASENAMEASIDENTIFIER___PresenterToViewInterface!
        weak var wireframe : ___FILEBASENAMEASIDENTIFIER___PresenterToWireframeInterface!
        
        // MARK: - Instance Variables
        weak var delegate: ___FILEBASENAMEASIDENTIFIER___Delegate?
        var moduleWireframe: ___FILEBASENAMEASIDENTIFIER___ModuleInterface {
                get {
                        let mw = self.wireframe as! ___FILEBASENAMEASIDENTIFIER___ModuleInterface
                        return mw
                }
        }
        
        // MARK: - Operational
        
        // MARK: - Interactor to Presenter Interface
        
        // MARK: - View to Presenter Interface
        
        // MARK: - Wireframe to Presenter Interface
        func set(delegate newDelegate: ___FILEBASENAMEASIDENTIFIER___Delegate?) {
                delegate = newDelegate
        }
}
