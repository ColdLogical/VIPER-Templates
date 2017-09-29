// VIPER Module Constants
struct ___VARIABLE_moduleName___Constants {
        // Uncomment to utilize a navigation contoller from storyboard
        //static let navigationControllerIdentifier = "___VARIABLE_moduleName___NavigationController"
        static let storyboardIdentifier = "___VARIABLE_moduleName___"
        static let viewIdentifier = "___VARIABLE_moduleName___View"
}

// Interface Abstraction for working with the VIPER Module
protocol ___VARIABLE_moduleName___: class {
        var delegate: ___VARIABLE_moduleName___Delegate? { get set }
}

// VIPER Interface for communication from Presenter -> Wireframe
protocol ___VARIABLE_moduleName___PresenterToWireframeInterface: class {

}
