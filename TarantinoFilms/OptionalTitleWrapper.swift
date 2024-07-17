import SwiftUI

struct OptionalTitleWrapper: ViewModifier {
    let title: String
    let isShow: Bool
    
    func body(content: Content) -> some View {
        if isShow {
            content.navigationTitle(title)
        } else {
            content
        }
    }
}

extension View {
    func optionalTitle(_ text: String, isShow: Bool) -> some View {
        modifier(OptionalTitleWrapper(title: text, isShow: isShow))
    }
}
