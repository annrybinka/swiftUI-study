import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView() {
            FilmsListView()
                .tabItem {
                    Label("Films", systemImage: "airplayvideo")
                }
            HelloView()
                .tabItem {
                    Label("Hello", systemImage: "person.circle")
                }
            SettingsView()
                .tabItem {
                    Label("Settings", systemImage: "gear")
                }
        }
    }
}

#Preview {
    ContentView()
}
