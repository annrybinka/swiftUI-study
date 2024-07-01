import SwiftUI

struct SettingsView: View {
    @State private var isMoodShowed = true
    @State private var mood: MyMood = .normal
    @State private var progress: Float = 50
    
    var body: some View {
        Form {
            Section {
                Toggle("Показать своё настроение", isOn: $isMoodShowed.animation())
                if isMoodShowed {
                    VStack {
                        Text("Сегодня у меня \(mood.title)").bold()
                            .padding(.top, 12)
                        Picker("Сегодня у меня", selection: $mood) {
                            ForEach(MyMood.allCases) { mood in
                                Image(systemName: mood.imageSystemName)
                            }
                        }
                        .pickerStyle(.segmented)
                    }
                }
            }
            
            Section {
                Slider(value: $progress)
                    .padding()
                    .tint(Color.green)
            }
        }
    }
}

#Preview {
    SettingsView()
}
