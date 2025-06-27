import SwiftUI

class ___VARIABLE_productName___Wireframe: ObservableObject {
    // MARK: - VIPER Stack
    lazy var moduleInteractor = ___VARIABLE_productName___Interactor()
    lazy var moduleNavigationView = ___VARIABLE_productName___NavigationView(wireframe: self, view: moduleView.contentView)
    lazy var modulePresenter = ___VARIABLE_productName___Presenter()
    lazy var moduleView = ___VARIABLE_productName___View()
    
    // MARK: - Computed VIPER Variables
    lazy var presenter: ___VARIABLE_productName___WireframeToPresenterInterface = modulePresenter
    lazy var view: ___VARIABLE_productName___NavigationInterface = moduleView
    
    // MARK: - Instance Variables
    @Published var path = NavigationPath()

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

struct ___VARIABLE_productName___NavigationView: View {
    @ObservedObject var wireframe: ___VARIABLE_productName___Wireframe
    @State var view: ___VARIABLE_productName___ContentView
    
//    var entityView: EntityModule = EntityModuleWireframe()

    var body: some View {
        NavigationStack(path: $wireframe.path) {
            view
//                .navigationTitle("___VARIABLE_productName___")
//                .navigationDestination(for: Entity.self) { entity in
//                    entityView.present(forEntity: entity)
//                }
        }
    }
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
    
//    func present() -> ___VARIABLE_productName___NavigationView {
//        presenter.beganPresenting()
//        return moduleNavigationView
//    }
    
//    func presentInNavigationStack() -> ___VARIABLE_productName___ContentView {
//        presenter.beganPresenting()
//        return moduleView.contentView
//    }
}

// MARK: - Presenter to Wireframe Interface
extension ___VARIABLE_productName___Wireframe: ___VARIABLE_productName___PresenterToWireframeInterface {
    
}

// MARK: - Communication Interfaces
// Interface Abstraction for working with the VIPER Module
protocol ___VARIABLE_productName___: AnyObject {
    var delegate: ___VARIABLE_productName___Delegate? { get set }
//    func present() -> ___VARIABLE_productName___NavigationView
//    func presentInNavigationStack() -> ___VARIABLE_productName___ContentView
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
