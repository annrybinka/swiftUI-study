import SwiftUI

struct FilmsListView: View {
    var titleOn: Bool
    @Binding var choosenPost: Post?
    
    var body: some View {
        NavigationView {
            List(filmsPosts) { post in
                NavigationLink {
                    FilmDetailsView(post: post, choosenPost: $choosenPost)
                        .optionalTitle(post.title, isShow: titleOn)
                } label: {
                    FilmRowView(post: post)
                }
            }
            .optionalTitle("Фильмы Тарантино", isShow: titleOn)
            .listStyle(.plain)
        }
    }
}

#Preview {
    FilmsListView(titleOn: true, choosenPost: .constant(filmsPosts[0]))
}
