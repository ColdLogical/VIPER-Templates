import SwiftUI
import UIKit

struct ___VARIABLE_productName___Representable: UIViewControllerRepresentable {
    // MARK: - UIViewRepresentable
    typealias UIViewControllerType = UIViewController
    
    var delegate: ___VARIABLE_productName___Delegate
    
    func makeUIViewController(
        context: Context
    ) -> UIViewController {
        context
            .coordinator
            .wireframe
            .presenter.beganPresenting()
        return context
            .coordinator
            .wireframe
            .moduleView
    }
    
    func updateUIViewController(
        _ uiViewController: UIViewController,
        context: Context
    ) {
        // Do Nothing
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(
            ___VARIABLE_productName___Wireframe(
                withDelegate: delegate
            )
        )
    }
    
    class Coordinator {
        let wireframe: ___VARIABLE_productName___Wireframe
        
        init(_ wireframe: ___VARIABLE_productName___Wireframe) {
            self.wireframe = wireframe
        }
    }
}

class ___VARIABLE_productName___Wireframe {
    // MARK: - VIPER Stack
    lazy var moduleInteractor = ___VARIABLE_productName___Interactor()
    lazy var moduleNavigationController = UINavigationController(rootViewController: moduleView)
    lazy var modulePresenter = ___VARIABLE_productName___Presenter()
    lazy var moduleView: ___VARIABLE_productName___View = {
        let vc = ___VARIABLE_productName___View()
        _ = vc.view
        return vc
    }()
    
    // MARK: - Computed VIPER Variables
    lazy var presenter: ___VARIABLE_productName___WireframeToPresenterInterface = self.modulePresenter
    lazy var view: ___VARIABLE_productName___NavigationInterface = self.moduleView
    
    // MARK: - Instance Variables
    
    // MARK: - Initialization
    init(
        withDelegate delegate: ___VARIABLE_productName___Delegate? = nil
    ) {
        let i = moduleInteractor
        let p = modulePresenter
        let v = moduleView
        
        i.presenter = p
        
        p.interactor = i
        p.view = v
        p.wireframe = self
        p.delegate = delegate
        
        v.presenter = p
    }
    
    // MARK: - Operational
    
}

// MARK: - Module Interface
extension ___VARIABLE_productName___Wireframe: ___VARIABLE_productName___ {
    var delegate: ___VARIABLE_productName___Delegate? {
        get {
            return presenter.delegate
        }
        set {
            presenter.set(delegate: newValue)
        }
    }
}

// MARK: - Presenter to Wireframe Interface
extension ___VARIABLE_productName___Wireframe: ___VARIABLE_productName___PresenterToWireframeInterface {
    
}

// MARK: - Communication Interfaces
// Interface Abstraction for working with the VIPER Module
protocol ___VARIABLE_productName___: AnyObject {
    var delegate: ___VARIABLE_productName___Delegate? { get set }
}

// VIPER Module Constants
struct ___VARIABLE_productName___Constants {
}

// VIPER Interface for manipulating the navigation of the view
protocol ___VARIABLE_productName___NavigationInterface: AnyObject {
    
}

// VIPER Interface for communication from Wireframe -> Presenter
protocol ___VARIABLE_productName___WireframeToPresenterInterface: AnyObject {
    func beganPresenting()
    var delegate: ___VARIABLE_productName___Delegate? { get }
    func set(delegate newDelegate: ___VARIABLE_productName___Delegate?)
}
