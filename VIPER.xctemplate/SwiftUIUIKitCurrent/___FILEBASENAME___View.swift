import SwiftUI
import UIKit

class ___VARIABLE_productName___View: UIViewController {
    // MARK: - VIPER Stack
    weak var presenter: ___VARIABLE_productName___ViewToPresenterInterface! {
        willSet {
            viewModel.presenter = newValue
        }
    }
    
    // MARK: - Instance Variables
    lazy var contentView = ___VARIABLE_productName___ContentView(viewModel: viewModel)
    lazy var hostingView = UIHostingController(rootView: contentView)
    lazy var viewModel = ___VARIABLE_productName___ContentViewModel(view: self)
    
    // MARK: - Outlets
    
    // MARK: - Operational
    func setupConstraints() {
        hostingView.view.translatesAutoresizingMaskIntoConstraints = false
        hostingView.view.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        hostingView.view.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        hostingView.view.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        hostingView.view.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addChild(hostingView)
        view.addSubview(hostingView.view)
        setupConstraints()
    }
}

class ___VARIABLE_productName___ContentViewModel: ObservableObject {
    weak var presenter: ___VARIABLE_productName___ViewToPresenterInterface!
    weak var view: ___VARIABLE_productName___View!
    
    init(view: ___VARIABLE_productName___View) {
        self.view = view
    }
}

// MARK: - Navigation Interface
extension ___VARIABLE_productName___View: ___VARIABLE_productName___NavigationInterface { }

// MARK: - Presenter to View Interface
extension ___VARIABLE_productName___View: ___VARIABLE_productName___PresenterToViewInterface {
    
}

// MARK: - Communication Interfaces
// VIPER Interface for communication from View -> Presenter
protocol ___VARIABLE_productName___ViewToPresenterInterface: AnyObject {
    
}
