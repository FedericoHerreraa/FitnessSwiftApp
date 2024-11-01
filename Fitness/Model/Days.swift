

import SwiftUI

struct Day: Identifiable {
    let id: Int
    let text: String
}

struct WeekDays {
    static let weekDays = [
        Day(id: 1, text: "Lunes"),
        Day(id: 2, text: "Martes"),
        Day(id: 3, text: "Miercoles"),
        Day(id: 4, text: "Jueves"),
        Day(id: 5, text: "Viernes"),
        Day(id: 6, text: "Sabado"),
        Day(id: 7, text: "Domingo")
    ]
}
