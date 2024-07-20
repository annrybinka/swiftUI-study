import SwiftUI

struct ContentView: View {
    @AppStorage("titleOn") private var titleOn = true
    @State private var choosenPost: Post? = nil
    
    var body: some View {
        TabView() {
            FilmsListView(titleOn: titleOn, choosenPost: $choosenPost)
                .tabItem {
                    Label("Films", systemImage: "airplayvideo")
                }
            FilmFactsView(post: choosenPost)
                .tabItem {
                    Label("Interesting facts", systemImage: "chart.pie")
                }
            SettingsView(titleOn: $titleOn)
                .tabItem {
                    Label("Settings", systemImage: "gear")
                }
        }
    }
}

#Preview {
    ContentView()
}
