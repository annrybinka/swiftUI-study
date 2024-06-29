import SwiftUI

struct FilmsListView: View {
    var body: some View {
        NavigationView {
            List(filmsPosts) { post in
                NavigationLink {
                    FilmDetailsView(post: post)
                } label: {
                    FilmRowView(post: post)
                }
            }
            .navigationTitle("Фильмы Тарантино")
            .listStyle(.plain)
        }
    }
}

#Preview {
    FilmsListView()
}
