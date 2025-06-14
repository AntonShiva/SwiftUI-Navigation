import SwiftUI

struct MasterView: View {
    @State private var currentView: Router = .view1
    
    var body: some View {
        ZStack {
            // Используем switch для выбора активного представления
            switch currentView {
            case .view1: View1()
            case .view2: View2().transition(.slide)
            case .view3: View3().transition(.slide)
            case .view4: View4()
            case .view5: View5()
            case .view6: View6()
            case .view7: View7()
            case .view8: View8()
            case .view9: View9()
            case .view10: View10()
            }
            
            // Панель навигации
            NavigationPanel(currentView: $currentView)
        }
        .ignoresSafeArea(.all, edges: .bottom)
    }
}

#Preview {
    ContentView()
}
