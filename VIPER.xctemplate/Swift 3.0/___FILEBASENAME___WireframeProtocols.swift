// VIPER Module Constants
struct ___VARIABLE_productName___Constants {
        // Uncomment to utilize a navigation contoller from storyboard
        //static let navigationControllerIdentifier = "___VARIABLE_productName___NavigationController"
        static let storyboardIdentifier = "___VARIABLE_productName___"
        static let viewIdentifier = "___VARIABLE_productName___View"
}

// Interface Abstraction for working with the VIPER Module
protocol ___VARIABLE_productName___: class {
        var delegate: ___VARIABLE_productName___Delegate? { get set }
}

// VIPER Interface for communication from Presenter -> Wireframe
protocol ___VARIABLE_productName___PresenterToWireframeInterface: class {

}
