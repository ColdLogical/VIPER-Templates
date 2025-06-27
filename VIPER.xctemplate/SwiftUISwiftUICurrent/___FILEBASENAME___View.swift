import SwiftUI

struct ___VARIABLE_productName___ContentView: View {
    @ObservedObject var viewModel: ___VARIABLE_productName___View
    
    var body: some View {
        Text("VIPERing like a BOSS")
    }
}

class ___VARIABLE_productName___View: ObservableObject {
    weak var presenter: ___VARIABLE_productName___ViewToPresenterInterface!
    lazy var contentView = ___VARIABLE_productName___ContentView(viewModel: self)
}

#Preview {
    let view = ___VARIABLE_productName___View()
    return view.contentView
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
