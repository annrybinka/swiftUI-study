import SwiftUI

struct ContentView: View {
    @AppStorage("titleOn") private var titleOn = true
    
    var body: some View {
        TabView() {
            FilmsListView(titleOn: titleOn)
                .tabItem {
                    Label("Films", systemImage: "airplayvideo")
                }
            HelloView()
                .tabItem {
                    Label("Hello", systemImage: "person.circle")
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
