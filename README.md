# 🧭 SwiftUI Navigation

Современная система навигации для SwiftUI с использованием ZStack, enum роутера и анимированных переходов.

## 📋 Содержание

- [Особенности](#особенности)
- [Архитектура](#архитектура)
- [Установка](#установка)
- [Использование](#использование)
- [Демонстрации переходов](#демонстрации-переходов)
- [Производительность](#производительность)
- [Правила проекта](#правила-проекта)

## ✨ Особенности

- **🚀 Высокая производительность** - только активное представление загружено в память
- **🎨 8 типов анимированных переходов** - от простых до кастомных
- **📦 Модульная архитектура** - легко расширяемая и поддерживаемая
- **🔧 SwiftUI-идиоматичность** - использование @Binding вместо callback'ов
- **🎯 Типобезопасность** - enum роутер с compile-time проверками
- **📱 Масштабируемость** - от 10 до 100+ экранов без потери производительности

## 🏗 Архитектура

### Основные компоненты:

```
SwiftUI Navigation/
├── Router.swift              # Enum роутер с навигационными случаями
├── Router+UI.swift           # UI расширения для роутера
├── MasterView.swift          # Главный контейнер навигации
├── NavigationPanel.swift     # Панель с кнопками навигации
├── Views.swift               # 10 демонстрационных представлений
└── Demos/                    # Демонстрации разных переходов
    ├── MasterView_ScaleTransition.swift
    ├── MasterView_SlideTransition.swift
    ├── CustomRotationTransition.swift
    └── ... (8 вариантов переходов)
```

### Ключевые принципы:

1. **Условная навигация** - `switch currentView` вместо множественных ZStack слоев
2. **Разделение ответственности** - Router для логики, UI extensions для представления
3. **Современные SwiftUI подходы** - @Binding, @StateObject, @EnvironmentObject

## 🚀 Установка

1. Клонируйте репозиторий:
```bash
git clone https://github.com/your-username/swiftui-navigation.git
```

2. Откройте `SwiftUI Navigation.xcodeproj` в Xcode

3. Запустите проект на симуляторе или устройстве

## 💻 Использование

### Базовая навигация:

```swift
import SwiftUI

struct MyApp: App {
    var body: some Scene {
        WindowGroup {
            MasterView() // Основная навигация
        }
    }
}
```

### Добавление нового экрана:

1. **Добавьте случай в Router:**
```swift
enum Router: String, CaseIterable {
    case view1, view2, view3
    case newView // Новый экран
}
```

2. **Обновите UI extension:**
```swift
extension Router {
    var buttonTitle: String {
        switch self {
        case .newView: return "New"
        // ...
        }
    }
}
```

3. **Добавьте в switch MasterView:**
```swift
switch currentView {
case .newView: NewView()
// ...
}
```

### Создание кастомного перехода:

```swift
struct CustomTransition: Transition {
    func body(content: Content, phase: TransitionPhase) -> some View {
        content
            .rotationEffect(.degrees(phase.isIdentity ? 0 : 360))
            .scaleEffect(phase.isIdentity ? 1 : 0)
            .opacity(phase.isIdentity ? 1 : 0)
    }
}

// Использование:
MyView().transition(CustomTransition().animation(.spring(duration: 1.0)))
```

## 🎬 Демонстрации переходов

| Переход | Описание | Файл |
|---------|----------|------|
| **Scale** | Увеличение/уменьшение | `MasterView_ScaleTransition.swift` |
| **Slide** | Плавное скольжение | `MasterView_SlideTransition.swift` |
| **Combined** | Scale + Slide комбо | `MasterView_CombinedTransition.swift` |
| **Push** | Выталкивание из краев | `MasterView_PushTransition.swift` |
| **Move** | Движение по направлениям | `MasterView_MoveTransition.swift` |
| **Custom Rotation** | Вращение + масштабирование | `CustomRotationTransition.swift` |
| **Advanced Custom** | Комплексный с TransitionPhase | `AdvancedCustomTransition.swift` |
| **Asymmetric** | Разные анимации появления/исчезновения | `AsymmetricTransition.swift` |

### Примеры использования:

```swift
// Простой переход
View1().transition(.scale)

// Комбинированный переход  
View2().transition(.scale.combined(with: .slide))

// Асимметричный переход
View3().transition(.asymmetric(
    insertion: .scale,
    removal: .move(edge: .leading)
))

// Кастомный переход
View4().transition(CustomRotationTransition().animation(.spring(duration: 0.8)))
```

## ⚡ Производительность

### Преимущества архитектуры:

- **Память**: Только 1 представление загружено (вместо 10)
- **CPU**: Анимации выполняются только у активного представления
- **Масштабируемость**: Линейная сложность O(1) вместо O(n)
- **Батарея**: Значительная экономия на больших приложениях

### Сравнение подходов:

| Подход | Память | CPU | Масштабируемость |
|--------|--------|-----|------------------|
| **ZStack + opacity** | ❌ Все в памяти | ❌ Все анимации | ❌ O(n) |
| **Switch + conditional** | ✅ Только активное | ✅ Одна анимация | ✅ O(1) |


### Приоритеты:
1. **@Binding** - parent-child связывание
2. **@StateObject/@ObservableObject** - сложная логика
3. **@EnvironmentObject** - глобальное состояние
4. **@Environment** - системные значения

## 🛠 Технические детали

### TransitionPhase состояния:
- `identity` - представление в иерархии
- `willAppear` - готовится к появлению
- `didDisappear` - удаляется из иерархии

### Анимационные модификаторы:
```swift
.transition(.scale)                    // Масштабирование
.transition(.slide)                    // Скольжение  
.transition(.move(edge: .leading))     // Движение с края
.transition(.push(from: .bottom))      // Выталкивание
.transition(.combined(with: .opacity)) // Комбинирование
```

## 🤝 Участие в разработке

1. Fork проекта
2. Создайте feature branch (`git checkout -b feature/amazing-transition`)
3. Commit изменения (`git commit -m 'Add amazing transition'`)
4. Push в branch (`git push origin feature/amazing-transition`)
5. Создайте Pull Request

## 📄 Лицензия

Этот проект распространяется под лицензией MIT. См. файл `LICENSE` для подробностей.

## 📚 Ресурсы

- [SwiftUI Transitions](https://developer.apple.com/documentation/swiftui/transition) - Apple Documentation
- [Creating View Transitions in SwiftUI](https://www.createwithswift.com/creating-view-transitions-in-swiftui/) - Create with Swift
- [SwiftUI Animation Guide](https://developer.apple.com/documentation/swiftui/animation) - Apple Documentation

---

**Создано с ❤️ для сообщества SwiftUI разработчиков** 
