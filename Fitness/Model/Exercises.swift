

import SwiftUI

struct Steps: Identifiable {
    let id: Int
    let name: String
}

struct ExerciseDetail: Identifiable {
    let id: Int
    let name: String
    let description: String
    let steps: [Steps]
}

struct Exercises {
    static let onlyExercises: [Exercise] = [
        Exercise(name: "Push-Up"),
        Exercise(name: "Squat"),
        Exercise(name: "Plank"),
        Exercise(name: "Tricep Dips"),
        Exercise(name: "Calf Raises"),
        Exercise(name: "Leg Raises"),
    ]
    
    static let stepDefault1: Steps = Steps(id: 000, name: "")
    
    static let stepDefault2: Steps = Steps(id: 000, name: "")
    
    static let defaultSteps: [Steps] = [stepDefault1, stepDefault2]
    
    static let defaultExercise: ExerciseDetail = ExerciseDetail(
        id: 1,
        name: "Push-Up",
        description: "A basic exercise for chest and triceps.",
        steps: [
            Steps(id: 001, name: "Get into a plank position."),
            Steps(id: 002, name: "Lower your body until your chest nearly touches the floor."),
            Steps(id: 003, name: "Push yourself back up to the starting position.")
        ]
    )
    
    static let all: [ExerciseDetail] = [
        ExerciseDetail(
            id: 1,
            name: "Flexión de Pecho",
            description: "Ejercicio básico para pecho y tríceps.",
            steps: [
                Steps(id: 1, name: "Colócate en posición de plancha con las manos al ancho de los hombros."),
                Steps(id: 2, name: "Baja el cuerpo hasta que el pecho casi toque el suelo."),
                Steps(id: 3, name: "Empuja hacia arriba hasta volver a la posición inicial.")
            ]
        ),
        ExerciseDetail(
            id: 2,
            name: "Sentadilla",
            description: "Fortalece piernas y glúteos.",
            steps: [
                Steps(id: 1, name: "Párate con los pies al ancho de los hombros."),
                Steps(id: 2, name: "Flexiona las rodillas y baja el cuerpo como si te fueras a sentar."),
                Steps(id: 3, name: "Mantén la espalda recta y baja lo más que puedas."),
                Steps(id: 4, name: "Vuelve a la posición inicial.")
            ]
        ),
        ExerciseDetail(
            id: 3,
            name: "Plancha",
            description: "Ejercicio para fortalecer el núcleo.",
            steps: [
                Steps(id: 1, name: "Apoya los antebrazos y los pies en el suelo."),
                Steps(id: 2, name: "Mantén el cuerpo en línea recta de la cabeza a los pies."),
                Steps(id: 3, name: "Aguanta la posición el mayor tiempo posible.")
            ]
        ),
        ExerciseDetail(
            id: 4,
            name: "Desplante",
            description: "Ejercicio que trabaja las piernas y los glúteos.",
            steps: [
                Steps(id: 1, name: "Párate con los pies juntos."),
                Steps(id: 2, name: "Da un paso hacia adelante con una pierna y baja la cadera."),
                Steps(id: 3, name: "Empuja hacia atrás hasta la posición inicial y repite con la otra pierna.")
            ]
        ),
        ExerciseDetail(
            id: 5,
            name: "Elevación de Piernas",
            description: "Ejercicio para fortalecer el abdomen inferior.",
            steps: [
                Steps(id: 1, name: "Acuéstate sobre una colchoneta con las piernas estiradas."),
                Steps(id: 2, name: "Levanta las piernas juntas hasta que queden perpendiculares al suelo."),
                Steps(id: 3, name: "Baja las piernas de manera controlada sin tocar el suelo.")
            ]
        ),
        ExerciseDetail(
            id: 6,
            name: "Curl de Bíceps",
            description: "Ejercicio básico para fortalecer los bíceps.",
            steps: [
                Steps(id: 1, name: "Sujeta una mancuerna en cada mano con los brazos extendidos."),
                Steps(id: 2, name: "Flexiona los codos para levantar las mancuernas hacia los hombros."),
                Steps(id: 3, name: "Baja lentamente a la posición inicial.")
            ]
        ),
        ExerciseDetail(
            id: 7,
            name: "Press Militar",
            description: "Fortalece los hombros y el tríceps.",
            steps: [
                Steps(id: 1, name: "Sujeta una barra con las manos a la altura de los hombros."),
                Steps(id: 2, name: "Empuja la barra hacia arriba hasta estirar los brazos."),
                Steps(id: 3, name: "Baja lentamente la barra hasta la altura de los hombros.")
            ]
        ),
        ExerciseDetail(
            id: 8,
            name: "Remo con Mancuerna",
            description: "Ejercicio para fortalecer la espalda.",
            steps: [
                Steps(id: 1, name: "Sujeta una mancuerna con una mano mientras la otra se apoya en una banca."),
                Steps(id: 2, name: "Lleva la mancuerna hacia tu torso doblando el codo."),
                Steps(id: 3, name: "Baja la mancuerna de manera controlada.")
            ]
        ),
        ExerciseDetail(
            id: 9,
            name: "Mountain Climbers",
            description: "Ejercicio de alta intensidad para el core y la resistencia.",
            steps: [
                Steps(id: 1, name: "Colócate en posición de plancha alta."),
                Steps(id: 2, name: "Lleva una rodilla hacia el pecho y alterna rápidamente con la otra."),
                Steps(id: 3, name: "Mantén el abdomen contraído y el ritmo constante.")
            ]
        ),
        ExerciseDetail(
            id: 10,
            name: "Burpee",
            description: "Ejercicio de cuerpo completo que mejora la resistencia y fuerza.",
            steps: [
                Steps(id: 1, name: "Párate derecho, luego baja y apoya las manos en el suelo."),
                Steps(id: 2, name: "Salta hacia atrás para colocarte en posición de plancha."),
                Steps(id: 3, name: "Realiza una flexión de pecho y vuelve a saltar hacia adelante."),
                Steps(id: 4, name: "Salta hacia arriba para finalizar el movimiento.")
            ]
        )
    ]
}
