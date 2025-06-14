import SwiftUI

struct MasterView_ScaleTransition: View {
    @State private var currentView: Router = .view1
    
    var body: some View {
        ZStack {
            // Представления с scale переходом
            switch currentView {
            case .view1: View1().transition(.scale)
            case .view2: View2().transition(.scale)
            case .view3: View3().transition(.scale)
            case .view4: View4().transition(.scale)
            case .view5: View5().transition(.scale)
            case .view6: View6().transition(.scale)
            case .view7: View7().transition(.scale)
            case .view8: View8().transition(.scale)
            case .view9: View9().transition(.scale)
            case .view10: View10().transition(.scale)
            }
            
            // Панель навигации
            NavigationPanel(currentView: $currentView)
        }
        .ignoresSafeArea(.all, edges: .bottom)
    }
}

#Preview {
    MasterView_ScaleTransition()
} 