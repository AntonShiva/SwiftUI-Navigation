import SwiftUI

// MARK: - Router UI Extensions
extension Router {
    var buttonTitle: String {
        switch self {
        case .view1: return "1"
        case .view2: return "2"
        case .view3: return "3"
        case .view4: return "4"
        case .view5: return "5"
        case .view6: return "6"
        case .view7: return "7"
        case .view8: return "8"
        case .view9: return "9"
        case .view10: return "10"
        }
    }
} 