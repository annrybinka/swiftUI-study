import SwiftUI

struct FilmsStatistic: Identifiable {
    let id: String
    let decade: Int
    let filmsNumber: Int
}

let filmsStatistic = [(1980, 2), (1990, 4), (2000, 7), (2010, 3)].map {
        FilmsStatistic(
            id: UUID().uuidString,
            decade: $0.0,
            filmsNumber: $0.1
        )
    }
