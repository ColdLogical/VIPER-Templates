// VIPER Interface to the Module
protocol ___VARIABLE_productName___Delegate: class {

}

// VIPER Interface for communication from Interactor -> Presenter
protocol ___VARIABLE_productName___InteractorToPresenterInterface: class {

}

// VIPER Interface for communication from View -> Presenter
protocol ___VARIABLE_productName___ViewToPresenterInterface: class {

}

// VIPER Interface for communication from Wireframe -> Presenter
protocol ___VARIABLE_productName___WireframeToPresenterInterface: class {
        weak var delegate: ___VARIABLE_productName___Delegate? { get }
        func set(delegate newDelegate: ___VARIABLE_productName___Delegate?)
}
