import SwiftUI

// Продвинутый кастомный переход с использованием TransitionPhase
struct AdvancedCustomTransition: Transition {
    func body(content: Content, phase: TransitionPhase) -> some View {
        content
            // Контролируемая прозрачность
            .opacity(phase.isIdentity ? 1 : phase == .didDisappear ? 0 : 0.3)
            
            // Вращение зависимое от фазы
            .rotationEffect(.degrees(phase.isIdentity ? 0 : phase == .willAppear ? -180 : 180))
            
            // Масштабирование с эффектом "пружины"
            .scaleEffect(phase.isIdentity ? 1 : 0.1)
            
            // Сдвиг по вертикали
            .offset(y: phase.isIdentity ? 0 : phase == .willAppear ? -100 : 100)
            
            // Размытие
            .blur(radius: phase.isIdentity ? 0 : 10)
    }
}

struct MasterView_AdvancedCustomTransition: View {
    @State private var currentView: Router = .view1
    
    var body: some View {
        ZStack {
            // Представления с продвинутым кастомным переходом
            switch currentView {
            case .view1: View1().transition(AdvancedCustomTransition().animation(.spring(duration: 1.2)))
            case .view2: View2().transition(AdvancedCustomTransition().animation(.spring(duration: 1.2)))
            case .view3: View3().transition(AdvancedCustomTransition().animation(.spring(duration: 1.2)))
            case .view4: View4().transition(AdvancedCustomTransition().animation(.spring(duration: 1.2)))
            case .view5: View5().transition(AdvancedCustomTransition().animation(.spring(duration: 1.2)))
            case .view6: View6().transition(AdvancedCustomTransition().animation(.spring(duration: 1.2)))
            case .view7: View7().transition(AdvancedCustomTransition().animation(.spring(duration: 1.2)))
            case .view8: View8().transition(AdvancedCustomTransition().animation(.spring(duration: 1.2)))
            case .view9: View9().transition(AdvancedCustomTransition().animation(.spring(duration: 1.2)))
            case .view10: View10().transition(AdvancedCustomTransition().animation(.spring(duration: 1.2)))
            }
            
            // Панель навигации
            NavigationPanel(currentView: $currentView)
        }
        .ignoresSafeArea(.all, edges: .bottom)
    }
}

#Preview {
    MasterView_AdvancedCustomTransition()
} 