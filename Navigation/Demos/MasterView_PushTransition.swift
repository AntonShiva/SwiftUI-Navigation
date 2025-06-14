import SwiftUI

struct MasterView_PushTransition: View {
    @State private var currentView: Router = .view1
    
    var body: some View {
        ZStack {
            // Представления с push переходом (слайд слева направо)
            switch currentView {
            case .view1: View1().transition(.push(from: .leading))
            case .view2: View2().transition(.push(from: .trailing))
            case .view3: View3().transition(.push(from: .top))
            case .view4: View4().transition(.push(from: .bottom))
            case .view5: View5().transition(.push(from: .leading))
            case .view6: View6().transition(.push(from: .trailing))
            case .view7: View7().transition(.push(from: .top))
            case .view8: View8().transition(.push(from: .bottom))
            case .view9: View9().transition(.push(from: .leading))
            case .view10: View10().transition(.push(from: .trailing))
            }
            
            // Панель навигации
            NavigationPanel(currentView: $currentView)
        }
        .ignoresSafeArea(.all, edges: .bottom)
    }
}

#Preview {
    MasterView_PushTransition()
} 