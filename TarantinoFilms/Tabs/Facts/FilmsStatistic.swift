import SwiftUI

struct FilmsStatistic: Identifiable {
    let id: String
    let decade: Int
    let filmsNumber: Int
}

let filmsStatistic = [
    FilmsStatistic(
        id: UUID().uuidString,
        decade: 1980,
        filmsNumber: 2
    ),
    FilmsStatistic(
        id: UUID().uuidString,
        decade: 1990,
        filmsNumber: 4
    ),
    FilmsStatistic(
        id: UUID().uuidString,
        decade: 2000,
        filmsNumber: 7
    ),
    FilmsStatistic(
        id: UUID().uuidString,
        decade: 2010,
        filmsNumber: 3
    )
]
