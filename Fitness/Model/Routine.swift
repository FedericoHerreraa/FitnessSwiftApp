

import SwiftUI

struct Exercise: Identifiable, Codable {
    var id = UUID()
    var name: String
}

struct MuscleRoutine: Identifiable, Codable {
    var id = UUID()
    let muscleName: String
    var exercises: [Exercise]
}

struct DayRoutine: Identifiable, Codable {
    var id = UUID()
    let dayName: String
    var muscles: [MuscleRoutine]
}

struct MuscleExample {
    static let muscleExample = MuscleRoutine(muscleName: "Tricep", exercises: [
        Exercise(name: "fondos"),
        Exercise(name: "fondos"),
        Exercise(name: "fondos")
    ])
}

final class Routine: ObservableObject {
    @Published var days: [DayRoutine] = [
        DayRoutine(dayName: "Lunes", muscles: []),
        DayRoutine(dayName: "Martes", muscles: []),
        DayRoutine(dayName: "Miércoles", muscles: []),
        DayRoutine(dayName: "Jueves", muscles: []),
        DayRoutine(dayName: "Viernes", muscles: []),
        DayRoutine(dayName: "Sábado", muscles: []),
        DayRoutine(dayName: "Domingo", muscles: [])
    ]
    
    func onAddMuscle(muscle: MuscleRoutine, day: String) {
        if let index = days.firstIndex(where: { $0.dayName == day }) {
            days[index].muscles.append(muscle)
        }
    }
}
