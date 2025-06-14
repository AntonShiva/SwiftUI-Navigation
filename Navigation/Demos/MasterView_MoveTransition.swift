import SwiftUI

struct MasterView_MoveTransition: View {
    @State private var currentView: Router = .view1
    
    var body: some View {
        ZStack {
            // Представления с move переходом из разных направлений
            switch currentView {
            case .view1: View1().transition(.move(edge: .leading))
            case .view2: View2().transition(.move(edge: .trailing))
            case .view3: View3().transition(.move(edge: .top))
            case .view4: View4().transition(.move(edge: .bottom))
            case .view5: View5().transition(.move(edge: .leading))
            case .view6: View6().transition(.move(edge: .trailing))
            case .view7: View7().transition(.move(edge: .top))
            case .view8: View8().transition(.move(edge: .bottom))
            case .view9: View9().transition(.move(edge: .leading))
            case .view10: View10().transition(.move(edge: .trailing))
            }
            
            // Панель навигации
            NavigationPanel(currentView: $currentView)
        }
        .ignoresSafeArea(.all, edges: .bottom)
    }
}

#Preview {
    MasterView_MoveTransition()
} 