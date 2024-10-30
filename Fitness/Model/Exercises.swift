

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
            name: "Flexión de Pecho",
            description: "Ejercicio básico para pecho y tríceps.",
            steps: [
                Steps(name: "Colócate en posición de plancha con las manos al ancho de los hombros."),
                Steps(name: "Baja el cuerpo hasta que el pecho casi toque el suelo."),
                Steps(name: "Empuja hacia arriba hasta volver a la posición inicial.")
            ]
        ),
        Exercise(
            id: 2,
            name: "Sentadilla",
            description: "Fortalece piernas y glúteos.",
            steps: [
                Steps(name: "Párate con los pies al ancho de los hombros."),
                Steps(name: "Flexiona las rodillas y baja el cuerpo como si te fueras a sentar."),
                Steps(name: "Mantén la espalda recta y baja lo más que puedas."),
                Steps(name: "Vuelve a la posición inicial.")
            ]
        ),
        Exercise(
            id: 3,
            name: "Plancha",
            description: "Ejercicio para fortalecer el núcleo.",
            steps: [
                Steps(name: "Apoya los antebrazos y los pies en el suelo."),
                Steps(name: "Mantén el cuerpo en línea recta de la cabeza a los pies."),
                Steps(name: "Aguanta la posición el mayor tiempo posible.")
            ]
        ),
        Exercise(
            id: 4,
            name: "Desplante",
            description: "Ejercicio que trabaja las piernas y los glúteos.",
            steps: [
                Steps(name: "Párate con los pies juntos."),
                Steps(name: "Da un paso hacia adelante con una pierna y baja la cadera."),
                Steps(name: "Empuja hacia atrás hasta la posición inicial y repite con la otra pierna.")
            ]
        ),
        Exercise(
            id: 5,
            name: "Elevación de Piernas",
            description: "Ejercicio para fortalecer el abdomen inferior.",
            steps: [
                Steps(name: "Acuéstate sobre una colchoneta con las piernas estiradas."),
                Steps(name: "Levanta las piernas juntas hasta que queden perpendiculares al suelo."),
                Steps(name: "Baja las piernas de manera controlada sin tocar el suelo.")
            ]
        ),
        Exercise(
            id: 6,
            name: "Curl de Bíceps",
            description: "Ejercicio básico para fortalecer los bíceps.",
            steps: [
                Steps(name: "Sujeta una mancuerna en cada mano con los brazos extendidos."),
                Steps(name: "Flexiona los codos para levantar las mancuernas hacia los hombros."),
                Steps(name: "Baja lentamente a la posición inicial.")
            ]
        ),
        Exercise(
            id: 7,
            name: "Press Militar",
            description: "Fortalece los hombros y el tríceps.",
            steps: [
                Steps(name: "Sujeta una barra con las manos a la altura de los hombros."),
                Steps(name: "Empuja la barra hacia arriba hasta estirar los brazos."),
                Steps(name: "Baja lentamente la barra hasta la altura de los hombros.")
            ]
        ),
        Exercise(
            id: 8,
            name: "Remo con Mancuerna",
            description: "Ejercicio para fortalecer la espalda.",
            steps: [
                Steps(name: "Sujeta una mancuerna con una mano mientras la otra se apoya en una banca."),
                Steps(name: "Lleva la mancuerna hacia tu torso doblando el codo."),
                Steps(name: "Baja la mancuerna de manera controlada.")
            ]
        ),
        Exercise(
            id: 9,
            name: "Mountain Climbers",
            description: "Ejercicio de alta intensidad para el core y la resistencia.",
            steps: [
                Steps(name: "Colócate en posición de plancha alta."),
                Steps(name: "Lleva una rodilla hacia el pecho y alterna rápidamente con la otra."),
                Steps(name: "Mantén el abdomen contraído y el ritmo constante.")
            ]
        ),
        Exercise(
            id: 10,
            name: "Burpee",
            description: "Ejercicio de cuerpo completo que mejora la resistencia y fuerza.",
            steps: [
                Steps(name: "Párate derecho, luego baja y apoya las manos en el suelo."),
                Steps(name: "Salta hacia atrás para colocarte en posición de plancha."),
                Steps(name: "Realiza una flexión de pecho y vuelve a saltar hacia adelante."),
                Steps(name: "Salta hacia arriba para finalizar el movimiento.")
            ]
        )
    ]
}
