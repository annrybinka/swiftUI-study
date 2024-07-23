import SwiftUI
import Charts

struct FilmFactsView: View {
    var post: Post?
    
    var body: some View {
        NavigationView {
            ScrollView {
                Text("За годы своей кинокарьеры Квентин Тарантино срежиссировал более 20 фильмов и сериалов. Первые работы он начал снимать ещё в начале 80-х, а пик его карьеры выпал на середину нулевых.")
                Divider().padding(.top, 8)
                Text("Режиссёрская фильмография Тарантино")
                    .font(.subheadline)
                    .fontWeight(.light)
                    .foregroundColor(.gray)
                Chart(filmsStatistic) { film in
                    SectorMark(
                        angle: .value(
                            Text(verbatim: film.id), film.filmsNumber
                        ),
                        angularInset: 3
                    )
                    .foregroundStyle(
                        by: .value(
                            Text(verbatim: film.id),
                            film.decade
                        )
                    )
                    .annotation(position: .overlay) {
                        Text("фильмы\n \(String(film.decade))-х")
                    }
                }
                .frame(height: 320)
                .shadow(radius: 5)
                Divider()
                if post != nil {
                    Text("Фильм «\(post!.title)» вышел в прокат в \(String(post!.date)) году. \(post!.facts)")
                        .padding(.top, 10)
                }
            }
            .navigationTitle("Интересные факты")
            .padding(16)
        }
    }
}

#Preview {
    FilmFactsView(post: nil)
}
