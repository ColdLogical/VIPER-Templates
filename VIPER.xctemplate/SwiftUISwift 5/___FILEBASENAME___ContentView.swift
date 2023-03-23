import SwiftUI

struct ___VARIABLE_productName___ContentView: View {
    @ObservedObject var viewModel: ___VARIABLE_productName___ContentViewModel
    
    var body: some View {
        Text("VIPERing like a BOSS")
    }
}

#if DEBUG
struct ___VARIABLE_productName___ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let view = ___VARIABLE_productName___View()
        let viewModel = ___VARIABLE_productName___ContentViewModel(view: view)
        let contentView = ___VARIABLE_productName___ContentView(viewModel: viewModel)
        return contentView
    }
}
#endif
