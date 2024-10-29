

import SwiftUI

struct Steps {
    let name: String
}

struct Exercise: Identifiable {
    let id: Int
    let name: String
    let description: String
    let steps: [Steps]
}

struct Exercises {
    
    static let defaultExercise: Exercise = Exercise(
        id: 1,
        name: "Push-Up",
        description: "A basic exercise for chest and triceps.",
        steps: [
            Steps(name: "Get into a plank position."),
            Steps(name: "Lower your body until your chest nearly touches the floor."),
            Steps(name: "Push yourself back up to the starting position.")
        ]
    )
    
    static let all: [Exercise] = [
            Exercise(
                id: 1,
                name: "Push-Up",
                description: "A basic exercise for chest and triceps.",
                steps: [
                    Steps(name: "Get into a plank position."),
                    Steps(name: "Lower your body until your chest nearly touches the floor."),
                    Steps(name: "Push yourself back up to the starting position.")
                ]
            ),
            Exercise(
                id: 2,
                name: "Squat",
                description: "Strengthens legs and glutes.",
                steps: [
                    Steps(name: "Stand with your feet shoulder-width apart."),
                    Steps(name: "Lower your body by bending your knees."),
                    Steps(name: "Keep your back straight and go as low as you can."),
                    Steps(name: "Return to the starting position.")
                ]
            ),
            Exercise(
                id: 3,
                name: "Plank",
                description: "Core strengthening exercise.",
                steps: [
                    Steps(name: "Get into a forearm plank position."),
                    Steps(name: "Keep your body in a straight line from head to toes."),
                    Steps(name: "Hold the position as long as you can.")
                ]
            ),
            Exercise(
                id: 4,
                name: "Lunges",
                description: "Works the legs and glutes.",
                steps: [
                    Steps(name: "Stand upright with feet together."),
                    Steps(name: "Step forward with one leg and lower your hips."),
                    Steps(name: "Push back up to the starting position and repeat with the other leg.")
                ]
            ),
            Exercise(
                id: 5,
                name: "Lunges",
                description: "Works the legs and glutes.",
                steps: [
                    Steps(name: "Stand upright with feet together."),
                    Steps(name: "Step forward with one leg and lower your hips."),
                    Steps(name: "Push back up to the starting position and repeat with the other leg.")
                ]
            ),
            Exercise(
                id: 6,
                name: "Lunges",
                description: "Works the legs and glutes.",
                steps: [
                    Steps(name: "Stand upright with feet together."),
                    Steps(name: "Step forward with one leg and lower your hips."),
                    Steps(name: "Push back up to the starting position and repeat with the other leg.")
                ]
            ),
            Exercise(
                id: 7,
                name: "Lunges",
                description: "Works the legs and glutes.",
                steps: [
                    Steps(name: "Stand upright with feet together."),
                    Steps(name: "Step forward with one leg and lower your hips."),
                    Steps(name: "Push back up to the starting position and repeat with the other leg.")
                ]
            )
        ]
}
