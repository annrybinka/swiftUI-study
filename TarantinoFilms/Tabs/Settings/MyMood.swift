import Foundation

enum MyMood: String, CaseIterable, Identifiable {
    case normal
    case good
    case sad
    case inlove
    case broken
    
    var id: Self {
        self
    }
    
    var title: String {
        switch self {
        case .good:
            return "хорошее настроение!"
        case .sad:
            return "настроение-Питер..."
        case .normal:
            return "всё ок."
        case .inlove:
            return "в глазах огонь!"
        case .broken:
            return "на сердце тьма..."
        }
        
    }
    
    var imageSystemName: String {
        switch self {
        case .good:
            return "smiley"
        case .sad:
            return "cloud.bolt.rain.fill"
        case .normal:
            return "checkmark.circle"
        case .inlove:
            return "heart"
        case .broken:
            return "heart.slash.fill"
        }
    }
}
