import SwiftUI

struct MasterView_CombinedTransition: View {
    @State private var currentView: Router = .view1
    
    var body: some View {
        ZStack {
            // Представления с комбинированным переходом
            switch currentView {
            case .view1: View1().transition(.scale.combined(with: .slide))
            case .view2: View2().transition(.scale.combined(with: .slide))
            case .view3: View3().transition(.scale.combined(with: .slide))
            case .view4: View4().transition(.scale.combined(with: .slide))
            case .view5: View5().transition(.scale.combined(with: .slide))
            case .view6: View6().transition(.scale.combined(with: .slide))
            case .view7: View7().transition(.scale.combined(with: .slide))
            case .view8: View8().transition(.scale.combined(with: .slide))
            case .view9: View9().transition(.scale.combined(with: .slide))
            case .view10: View10().transition(.scale.combined(with: .slide))
            }
            
            // Панель навигации
            NavigationPanel(currentView: $currentView)
        }
        .ignoresSafeArea(.all, edges: .bottom)
    }
}

#Preview {
    MasterView_CombinedTransition()
} 