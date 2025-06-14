import SwiftUI

struct MasterView_AsymmetricTransition: View {
    @State private var currentView: Router = .view1
    
    var body: some View {
        ZStack {
            // Представления с асимметричными переходами
            switch currentView {
            case .view1: 
                View1().transition(.asymmetric(
                    insertion: .scale.combined(with: .opacity),
                    removal: .move(edge: .leading).combined(with: .opacity)
                ))
            case .view2: 
                View2().transition(.asymmetric(
                    insertion: .move(edge: .top),
                    removal: .scale.combined(with: .opacity)
                ))
            case .view3: 
                View3().transition(.asymmetric(
                    insertion: .push(from: .bottom),
                    removal: .move(edge: .trailing)
                ))
            case .view4: 
                View4().transition(.asymmetric(
                    insertion: .slide,
                    removal: .push(from: .top)
                ))
            case .view5: 
                View5().transition(.asymmetric(
                    insertion: .move(edge: .leading).combined(with: .scale),
                    removal: .slide
                ))
            case .view6: 
                View6().transition(.asymmetric(
                    insertion: .scale,
                    removal: .move(edge: .bottom).combined(with: .opacity)
                ))
            case .view7: 
                View7().transition(.asymmetric(
                    insertion: .push(from: .trailing),
                    removal: .scale.combined(with: .slide)
                ))
            case .view8: 
                View8().transition(.asymmetric(
                    insertion: .move(edge: .bottom),
                    removal: .push(from: .leading)
                ))
            case .view9: 
                View9().transition(.asymmetric(
                    insertion: .slide.combined(with: .scale),
                    removal: .move(edge: .top)
                ))
            case .view10: 
                View10().transition(.asymmetric(
                    insertion: .push(from: .leading),
                    removal: .scale.combined(with: .opacity)
                ))
            }
            
            // Панель навигации
            NavigationPanel(currentView: $currentView)
        }
        .ignoresSafeArea(.all, edges: .bottom)
    }
}

#Preview {
    MasterView_AsymmetricTransition()
} 