//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

import Foundation

// VIPER Interface for communication from Interactor -> Presenter
protocol ___FILEBASENAMEASIDENTIFIER___InteractorOutput {
        
}

// VIPER Interface for communication from View -> Presenter
protocol ___FILEBASENAMEASIDENTIFIER___PresenterInterface {
        
}

// VIPER Interface for communication from Wireframe -> Presenter
protocol ___FILEBASENAMEASIDENTIFIER___Routing {
        
}

class ___FILEBASENAMEASIDENTIFIER___Presenter : NSObject, ___FILEBASENAMEASIDENTIFIER___InteractorOutput, ___FILEBASENAMEASIDENTIFIER___PresenterInterface, ___FILEBASENAMEASIDENTIFIER___Routing {
        // MARK: - VIPER Stack
        var interactor : ___FILEBASENAMEASIDENTIFIER___InteractorInput?
        var view : ___FILEBASENAMEASIDENTIFIER___ViewInterface?
        var wireframe : ___FILEBASENAMEASIDENTIFIER___WireframeInterface?
        
        // MARK: - Instance Variables
        
        // MARK: - Operational
}
