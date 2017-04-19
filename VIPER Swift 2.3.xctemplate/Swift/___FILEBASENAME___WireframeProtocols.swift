// VIPER Module Constants
struct ___FILEBASENAMEASIDENTIFIER___Constants {
        // Uncomment to utilize a navigation contoller from storyboard
        //static let navigationControllerIdentifier = "___FILEBASENAMEASIDENTIFIER___NavigationController"
        static let storyboardIdentifier = "___FILEBASENAMEASIDENTIFIER___"
        static let viewIdentifier = "___FILEBASENAMEASIDENTIFIER___View"
}

// Interface Abstraction for working with the VIPER Module
protocol ___FILEBASENAMEASIDENTIFIER___: class {
        var delegate: ___FILEBASENAMEASIDENTIFIER___Delegate? { get set }
}

// VIPER Interface for communication from Presenter -> Wireframe
protocol ___FILEBASENAMEASIDENTIFIER___PresenterToWireframeInterface: class {

}
