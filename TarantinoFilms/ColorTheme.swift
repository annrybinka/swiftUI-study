import SwiftUI

@Observable class ColorTheme {
    
    enum Theme: String, CaseIterable {
        case `default`, light, dark
    }
    
    var current = Theme.default
    
    var theme: ColorScheme? {
        switch current {
        case .default: .none
        case .light: .light
        case .dark: .dark
        }
    }
}
