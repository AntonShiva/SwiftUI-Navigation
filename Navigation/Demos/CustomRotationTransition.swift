import SwiftUI

// Кастомный переход с вращением и масштабированием
struct CustomRotationTransition: Transition {
    func body(content: Content, phase: TransitionPhase) -> some View {
        content
            .rotationEffect(Angle(degrees: phase.isIdentity ? 0 : 360))
            .scaleEffect(phase.isIdentity ? 1 : 0)
            .opacity(phase.isIdentity ? 1 : 0)
    }
}

struct MasterView_CustomRotationTransition: View {
    @State private var currentView: Router = .view1
    
    var body: some View {
        ZStack {
            // Представления с кастомным переходом
            switch currentView {
            case .view1: View1().transition(CustomRotationTransition().animation(.easeInOut(duration: 0.8)))
            case .view2: View2().transition(CustomRotationTransition().animation(.easeInOut(duration: 0.8)))
            case .view3: View3().transition(CustomRotationTransition().animation(.easeInOut(duration: 0.8)))
            case .view4: View4().transition(CustomRotationTransition().animation(.easeInOut(duration: 0.8)))
            case .view5: View5().transition(CustomRotationTransition().animation(.easeInOut(duration: 0.8)))
            case .view6: View6().transition(CustomRotationTransition().animation(.easeInOut(duration: 0.8)))
            case .view7: View7().transition(CustomRotationTransition().animation(.easeInOut(duration: 0.8)))
            case .view8: View8().transition(CustomRotationTransition().animation(.easeInOut(duration: 0.8)))
            case .view9: View9().transition(CustomRotationTransition().animation(.easeInOut(duration: 0.8)))
            case .view10: View10().transition(CustomRotationTransition().animation(.easeInOut(duration: 0.8)))
            }
            
            // Панель навигации
            NavigationPanel(currentView: $currentView)
        }
        .ignoresSafeArea(.all, edges: .bottom)
    }
}

#Preview {
    MasterView_CustomRotationTransition()
} 