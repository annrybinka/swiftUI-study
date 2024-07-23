import SwiftUI

struct SettingsView: View {
    @Environment(\.colorScheme) var colorScheme
    @Binding var titleOn: Bool
    @State private var isMoodShowed = true
    @State private var mood: MyMood = .normal
    @State private var progress: Float = 50
    
    var body: some View {
        Form {
            Section {
                Text("\(colorScheme == .dark ? "Dark Theme" : "Light Theme")") +
                Text(" enabled")
            }
            
            Section {
                Toggle("Show title in list", isOn: $titleOn.animation())
                if titleOn {
                    Text("Navigation title enabled")
                        .font(.caption)
                        .foregroundColor(.gray)
                }
            }
            
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
                        Text("вооот настолько")
                            .padding(.top, 20)
                        Slider(value: $progress, in: 20...150)
                            .padding()
                            .tint(Color.green)
                        TimelineView(.animation) { context in
                            Image(systemName: mood.imageSystemName)
                                .font(.system(size: CGFloat(progress)))
                                .shadow(radius: 5)
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    SettingsView(titleOn: .constant(true))
}
