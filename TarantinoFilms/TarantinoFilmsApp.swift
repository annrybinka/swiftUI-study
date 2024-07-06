import SwiftUI

@main
struct TarantinoFilmsApp: App {
    @State private var colorTheme = ColorTheme()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .preferredColorScheme(colorTheme.theme)
                .environment(colorTheme)
        }
    }
}
