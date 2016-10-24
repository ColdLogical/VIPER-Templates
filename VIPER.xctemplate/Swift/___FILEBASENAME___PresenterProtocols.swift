//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

// VIPER Interface to the Module
protocol ___FILEBASENAMEASIDENTIFIER___Delegate : class {
        
}

// VIPER Interface for communication from Interactor -> Presenter
protocol ___FILEBASENAMEASIDENTIFIER___InteractorToPresenterInterface : class {
        
}

// VIPER Interface for communication from View -> Presenter
protocol ___FILEBASENAMEASIDENTIFIER___ViewToPresenterInterface : class {
        
}

// VIPER Interface for communication from Wireframe -> Presenter
protocol ___FILEBASENAMEASIDENTIFIER___WireframeToPresenterInterface : class {
        weak var delegate: ___FILEBASENAMEASIDENTIFIER___Delegate? { get }
        func set(newDelegate: ___FILEBASENAMEASIDENTIFIER___Delegate?)
}
