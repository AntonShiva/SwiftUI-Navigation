import SwiftUI

struct NavigationPanel: View {
    @Binding var currentView: Router
    
    var body: some View {
        VStack {
            Spacer()
            
            HStack(spacing: 5) {
                ForEach(Router.allCases, id: \.self) { route in
                    Button(action: {
                        withAnimation(.easeInOut(duration: 0.3)) {
                            currentView = route
                        }
                    }) {
                        Text(route.buttonTitle)
                            .font(.title2)
                            .fontWeight(.semibold)
                            .frame(width: 30, height: 40)
                            .background(currentView == route ? Color.blue : Color.gray.opacity(0.3))
                            .foregroundColor(currentView == route ? .white : .primary)
                            .clipShape(Rectangle())
                    }
                }
            }
            .padding()
            .background(Color(.systemBackground).opacity(0.9))
            .padding(.bottom, 20)
        }
        .zIndex(11)
    }
} 