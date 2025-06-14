import SwiftUI

struct MasterView_SlideTransition: View {
    @State private var currentView: Router = .view1
    
    var body: some View {
        ZStack {
            // Представления с slide переходом
            switch currentView {
            case .view1: View1().transition(.slide)
            case .view2: View2().transition(.slide)
            case .view3: View3().transition(.slide)
            case .view4: View4().transition(.slide)
            case .view5: View5().transition(.slide)
            case .view6: View6().transition(.slide)
            case .view7: View7().transition(.slide)
            case .view8: View8().transition(.slide)
            case .view9: View9().transition(.slide)
            case .view10: View10().transition(.slide)
            }
            
            // Панель навигации
            NavigationPanel(currentView: $currentView)
        }
        .ignoresSafeArea(.all, edges: .bottom)
    }
}

#Preview {
    MasterView_SlideTransition()
} 