import SwiftUI

struct View1: View {
    @State private var rotation: Double = 0
    
    var body: some View {
        VStack(spacing: 30) {
            Text("Это вью 1")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.white)
            
            Circle()
                .fill(
                    LinearGradient(
                        gradient: Gradient(colors: [.pink, .purple]),
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    )
                )
                .frame(width: 150, height: 150)
                .rotationEffect(.degrees(rotation))
                .onAppear {
                    withAnimation(.linear(duration: 4).repeatForever(autoreverses: false)) {
                        rotation = 360
                    }
                }
            
            HStack {
                Circle()
                    .fill(Color.yellow)
                    .frame(width: 50, height: 50)
                Circle()
                    .fill(Color.orange)
                    .frame(width: 50, height: 50)
                Circle()
                    .fill(Color.red)
                    .frame(width: 50, height: 50)
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.red.opacity(0.5))
    }
}

struct View2: View {
    var body: some View {
        VStack(spacing: 40) {
            Text("Это вью 2")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.white)
            
            VStack(spacing: 20) {
                // Треугольник
                Triangle()
                    .fill(Color.cyan)
                    .frame(width: 120, height: 100)
                
                Text("▲ Треугольник ▲")
                    .font(.title2)
                    .foregroundColor(.white)
                    .fontWeight(.semibold)
            }
            
            HStack(spacing: 15) {
                Triangle()
                    .fill(Color.mint)
                    .frame(width: 60, height: 50)
                Triangle()
                    .fill(Color.teal)
                    .frame(width: 60, height: 50)
                Triangle()
                    .fill(Color.blue)
                    .frame(width: 60, height: 50)
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.blue.opacity(0.5))
    }
}

struct View3: View {
    @State private var scale: CGFloat = 1.0
    
    var body: some View {
        VStack(spacing: 25) {
            Text("Это вью 3")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.white)
            
            RoundedRectangle(cornerRadius: 25)
                .fill(
                    RadialGradient(
                        gradient: Gradient(colors: [.yellow, .orange, .red]),
                        center: .center,
                        startRadius: 10,
                        endRadius: 100
                    )
                )
                .frame(width: 200, height: 120)
                .scaleEffect(scale)
                .onAppear {
                    withAnimation(.easeInOut(duration: 2).repeatForever(autoreverses: true)) {
                        scale = 1.2
                    }
                }
            
            Text("🟢 Прямоугольники 🟢")
                .font(.title)
                .foregroundColor(.white)
            
            HStack(spacing: 10) {
                Rectangle()
                    .fill(Color.yellow)
                    .frame(width: 40, height: 80)
                Rectangle()
                    .fill(Color.green)
                    .frame(width: 40, height: 60)
                Rectangle()
                    .fill(Color.mint)
                    .frame(width: 40, height: 100)
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.green.opacity(0.5))
    }
}

struct View4: View {
    var body: some View {
        VStack(spacing: 30) {
            Text("Это вью 4")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.white)
            
            // Звезда
            Star()
                .fill(Color.yellow)
                .frame(width: 150, height: 150)
                .shadow(color: .orange, radius: 10)
            
            Text("⭐ Звездное небо ⭐")
                .font(.title2)
                .foregroundColor(.white)
                .fontWeight(.semibold)
            
            HStack(spacing: 20) {
                Star()
                    .fill(Color.yellow)
                    .frame(width: 40, height: 40)
                Star()
                    .fill(Color.orange)
                    .frame(width: 30, height: 30)
                Star()
                    .fill(Color.red)
                    .frame(width: 35, height: 35)
                Star()
                    .fill(Color.pink)
                    .frame(width: 25, height: 25)
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.orange.opacity(0.5))
    }
}

struct View5: View {
    @State private var offset: CGFloat = 0
    
    var body: some View {
        VStack(spacing: 30) {
            Text("Это вью 5")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.white)
            
            // Ромб
            Diamond()
                .fill(Color.purple)
                .frame(width: 120, height: 120)
                .offset(x: offset)
                .onAppear {
                    withAnimation(.easeInOut(duration: 3).repeatForever(autoreverses: true)) {
                        offset = 50
                    }
                }
            
            Text("💎 Драгоценности 💎")
                .font(.title2)
                .foregroundColor(.white)
                .fontWeight(.semibold)
            
            VStack(spacing: 15) {
                HStack(spacing: 15) {
                    Diamond()
                        .fill(Color.purple)
                        .frame(width: 50, height: 50)
                    Diamond()
                        .fill(Color.indigo)
                        .frame(width: 40, height: 40)
                    Diamond()
                        .fill(Color.blue)
                        .frame(width: 45, height: 45)
                }
                
                Text("Фиолетовые кристаллы")
                    .font(.caption)
                    .foregroundColor(.white)
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.purple.opacity(0.5))
    }
}

struct View6: View {
    @State private var heartScale: CGFloat = 1.0
    
    var body: some View {
        VStack(spacing: 25) {
            Text("Это вью 6")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.white)
            
            // Сердце
            Heart()
                .fill(Color.red)
                .frame(width: 120, height: 120)
                .scaleEffect(heartScale)
                .onAppear {
                    withAnimation(.easeInOut(duration: 1).repeatForever(autoreverses: true)) {
                        heartScale = 1.3
                    }
                }
            
            Text("❤️ Сердца ❤️")
                .font(.title2)
                .foregroundColor(.white)
                .fontWeight(.semibold)
            
            HStack(spacing: 20) {
                Heart()
                    .fill(Color.red)
                    .frame(width: 40, height: 40)
                Heart()
                    .fill(Color.pink)
                    .frame(width: 35, height: 35)
                Heart()
                    .fill(Color.orange)
                    .frame(width: 30, height: 30)
            }
            
            Text("Любовь повсюду")
                .font(.callout)
                .foregroundColor(.white)
                .italic()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.pink.opacity(0.5))
    }
}

struct View7: View {
    @State private var rotationAngle: Double = 0
    
    var body: some View {
        VStack(spacing: 30) {
            Text("Это вью 7")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.white)
            
            // Шестиугольник
            Hexagon()
                .fill(
                    AngularGradient(
                        gradient: Gradient(colors: [.cyan, .blue, .purple, .pink, .red, .orange, .yellow, .green]),
                        center: .center
                    )
                )
                .frame(width: 140, height: 140)
                .rotationEffect(.degrees(rotationAngle))
                .onAppear {
                    withAnimation(.linear(duration: 8).repeatForever(autoreverses: false)) {
                        rotationAngle = 360
                    }
                }
            
            Text("🔷 Шестиугольники 🔷")
                .font(.title2)
                .foregroundColor(.white)
                .fontWeight(.semibold)
            
            HStack(spacing: 10) {
                Hexagon()
                    .fill(Color.cyan)
                    .frame(width: 50, height: 50)
                Hexagon()
                    .fill(Color.teal)
                    .frame(width: 45, height: 45)
                Hexagon()
                    .fill(Color.blue)
                    .frame(width: 40, height: 40)
                Hexagon()
                    .fill(Color.indigo)
                    .frame(width: 35, height: 35)
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.cyan.opacity(0.5))
    }
}

struct View8: View {
    @State private var waveOffset: CGFloat = 0
    
    var body: some View {
        VStack(spacing: 30) {
            Text("Это вью 8")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.black)
            
            // Эллипсы
            VStack(spacing: 20) {
                Ellipse()
                    .fill(Color.orange)
                    .frame(width: 200, height: 80)
                    .offset(x: waveOffset)
                
                Ellipse()
                    .fill(Color.yellow)
                    .frame(width: 150, height: 60)
                    .offset(x: -waveOffset)
                
                Ellipse()
                    .fill(Color.red)
                    .frame(width: 180, height: 70)
                    .offset(x: waveOffset)
            }
            .onAppear {
                withAnimation(.easeInOut(duration: 2).repeatForever(autoreverses: true)) {
                    waveOffset = 30
                }
            }
            
            Text("🟡 Эллипсы в движении 🟡")
                .font(.title2)
                .foregroundColor(.black)
                .fontWeight(.semibold)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.yellow.opacity(0.5))
    }
}

struct View9: View {
    @State private var bounceHeight: CGFloat = 0
    
    var body: some View {
        VStack(spacing: 30) {
            Text("Это вью 9")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.white)
            
            // Капсулы
            VStack(spacing: 15) {
                Capsule()
                    .fill(Color.purple)
                    .frame(width: 180, height: 40)
                    .offset(y: bounceHeight)
                
                Capsule()
                    .fill(Color.indigo)
                    .frame(width: 160, height: 35)
                    .offset(y: -bounceHeight)
                
                Capsule()
                    .fill(Color.blue)
                    .frame(width: 140, height: 30)
                    .offset(y: bounceHeight)
            }
            .onAppear {
                withAnimation(.easeInOut(duration: 1.5).repeatForever(autoreverses: true)) {
                    bounceHeight = 20
                }
            }
            
            Text("🟣 Прыгающие капсулы 🟣")
                .font(.title2)
                .foregroundColor(.white)
                .fontWeight(.semibold)
            
            HStack(spacing: 10) {
                Capsule()
                    .fill(Color.purple)
                    .frame(width: 60, height: 20)
                Capsule()
                    .fill(Color.indigo)
                    .frame(width: 50, height: 20)
                Capsule()
                    .fill(Color.blue)
                    .frame(width: 40, height: 20)
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.indigo.opacity(0.5))
    }
}

struct View10: View {
    @State private var pulseScale: CGFloat = 1.0
    
    var body: some View {
        VStack(spacing: 30) {
            Text("Это вью 10")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.white)
            
            // Комбинированные фигуры
            ZStack {
                Circle()
                    .fill(Color.green)
                    .frame(width: 150, height: 150)
                    .scaleEffect(pulseScale)
                
                RoundedRectangle(cornerRadius: 15)
                    .fill(Color.mint)
                    .frame(width: 100, height: 100)
                    .rotationEffect(.degrees(45))
                
                Circle()
                    .fill(Color.white)
                    .frame(width: 60, height: 60)
                
                Text("10")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.green)
            }
            .onAppear {
                withAnimation(.easeInOut(duration: 2).repeatForever(autoreverses: true)) {
                    pulseScale = 1.2
                }
            }
            
            Text("🌿 Финальная композиция 🌿")
                .font(.title2)
                .foregroundColor(.white)
                .fontWeight(.semibold)
            
            HStack(spacing: 15) {
                ZStack {
                    Circle()
                        .fill(Color.green)
                        .frame(width: 40, height: 40)
                    Circle()
                        .fill(Color.white)
                        .frame(width: 20, height: 20)
                }
                
                ZStack {
                    Circle()
                        .fill(Color.mint)
                        .frame(width: 40, height: 40)
                    Circle()
                        .fill(Color.white)
                        .frame(width: 20, height: 20)
                }
                
                ZStack {
                    Circle()
                        .fill(Color.teal)
                        .frame(width: 40, height: 40)
                    Circle()
                        .fill(Color.white)
                        .frame(width: 20, height: 20)
                }
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.mint.opacity(0.5))
    }
}

// MARK: - Custom Shapes

struct Triangle: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: rect.midX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.midX, y: rect.minY))
        return path
    }
}

struct Star: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let center = CGPoint(x: rect.width / 2, y: rect.height / 2)
        let outerRadius = min(rect.width, rect.height) / 2
        let innerRadius = outerRadius * 0.4
        let numberOfPoints = 5
        
        for i in 0..<numberOfPoints * 2 {
            let angle = Double(i) * .pi / Double(numberOfPoints)
            let radius = i % 2 == 0 ? outerRadius : innerRadius
            let x = center.x + cos(angle - .pi / 2) * radius
            let y = center.y + sin(angle - .pi / 2) * radius
            
            if i == 0 {
                path.move(to: CGPoint(x: x, y: y))
            } else {
                path.addLine(to: CGPoint(x: x, y: y))
            }
        }
        path.closeSubpath()
        return path
    }
}

struct Diamond: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: rect.midX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.midY))
        path.addLine(to: CGPoint(x: rect.midX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.midY))
        path.closeSubpath()
        return path
    }
}

struct Heart: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.width
        let height = rect.height
        
        path.move(to: CGPoint(x: width / 2, y: height))
        
        path.addCurve(to: CGPoint(x: 0, y: height / 4),
                     control1: CGPoint(x: width / 2, y: height * 3 / 4),
                     control2: CGPoint(x: 0, y: height / 2))
        
        path.addArc(center: CGPoint(x: width / 4, y: height / 4),
                   radius: width / 4,
                   startAngle: Angle(radians: .pi),
                   endAngle: Angle(radians: 0),
                   clockwise: false)
        
        path.addArc(center: CGPoint(x: width * 3 / 4, y: height / 4),
                   radius: width / 4,
                   startAngle: Angle(radians: .pi),
                   endAngle: Angle(radians: 0),
                   clockwise: false)
        
        path.addCurve(to: CGPoint(x: width / 2, y: height),
                     control1: CGPoint(x: width, y: height / 2),
                     control2: CGPoint(x: width / 2, y: height * 3 / 4))
        
        return path
    }
}

struct Hexagon: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let center = CGPoint(x: rect.midX, y: rect.midY)
        let radius = min(rect.width, rect.height) / 2
        let numberOfSides = 6
        
        for i in 0..<numberOfSides {
            let angle = Double(i) * 2 * .pi / Double(numberOfSides) - .pi / 2
            let x = center.x + cos(angle) * radius
            let y = center.y + sin(angle) * radius
            
            if i == 0 {
                path.move(to: CGPoint(x: x, y: y))
            } else {
                path.addLine(to: CGPoint(x: x, y: y))
            }
        }
        path.closeSubpath()
        return path
    }
} 
