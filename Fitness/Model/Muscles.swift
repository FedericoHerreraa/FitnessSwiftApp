

import SwiftUI

struct Muscle: Identifiable {
    let id = UUID()
    let name: String
}

struct Muscles {
    static let muscles: [Muscle] = [
        Muscle(name: "Bicep"),
        Muscle(name: "Tricep"),
        Muscle(name: "Pecho"),
        Muscle(name: "Hombro"),
        Muscle(name: "Espalda"),
        Muscle(name: "Abdominales"),
        Muscle(name: "Cuadriceps"),
        Muscle(name: "Gemelos")
    ]
}
