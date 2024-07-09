import SwiftUI

struct FilmsListView: View {
    var titleOn: Bool
    
    var body: some View {
        NavigationView {
            List(filmsPosts) { post in
                NavigationLink {
                    FilmDetailsView(post: post)
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
    FilmsListView(titleOn: true)
}
