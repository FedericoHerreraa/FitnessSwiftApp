import SwiftUI

struct NewMuscleRoutineView: View {
    @State private var selectedMuscle: String?
    @State private var exerciseOneSelected: Exercise = Exercise(name: "Ejercicio 1")
    @State private var exerciseTwoSelected: Exercise = Exercise(name: "Ejercicio 2")
    @State private var exerciseThreeSelected: Exercise = Exercise(name: "Ejercicio 3")
    
    @Binding var isPresented: Bool
    var day: String
    
    @EnvironmentObject var routine: Routine
        
    var body: some View {
        VStack {
            DismissButton(isPreviewProfileOpen: $isPresented)
            
            HStack(spacing: 10) {
                Image(systemName: "figure.cross.training.circle.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30)
                
                Text("Personalizar Rutina")
                    .font(.title)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    
            }
            .padding(.top, 50)
            
            VStack(spacing: 30) {
                List {
                    Picker("Musculo Seleccionado", selection: $selectedMuscle) {
                        ForEach(Muscles.muscles) { muscle in
                            Text(muscle.name).tag(muscle.name)
                        }
                    }
                }
                .pickerStyle(.menu)
                
                List {
                    Picker("Ejercicio 1", selection: $exerciseOneSelected.name) {
                        ForEach(Exercises.onlyExercises) { exercise in
                            Text(exercise.name).tag(exercise.name)
                        }
                    }
                    Picker("Ejercicio 2", selection: $exerciseTwoSelected.name) {
                        ForEach(Exercises.onlyExercises) { exercise in
                            Text(exercise.name).tag(exercise.name)
                        }
                    }
                    Picker("Ejercicio 3", selection: $exerciseThreeSelected.name) {
                        ForEach(Exercises.onlyExercises) { exercise in
                            Text(exercise.name).tag(exercise.name)
                        }
                    }
                }
                .pickerStyle(.menu)
                .offset(y: -200)
            }
            
            Button {
                let selectedExercises: [Exercise] = [exerciseOneSelected, exerciseTwoSelected, exerciseThreeSelected]
                
                if selectedMuscle == nil {
                    print("Tenés que elegir algún músculo para continuar")
                } else if selectedExercises.count < 3 {
                    print("Tenés que seleccionar 3 ejercicios para continuar")
                } else {
                    if let muscleName = selectedMuscle, !selectedExercises.isEmpty {
                        let muscleRoutine = MuscleRoutine(muscleName: muscleName, exercises: selectedExercises)
                        routine.onAddMuscle(muscle: muscleRoutine, day: self.day)
                    }
                    
                    isPresented = false
                }
            } label: {
                Text("Guardar Rutina")
                    .font(.title3)
                    .fontWeight(.semibold)
                    .foregroundColor(.primary)
                    .frame(width: 250, height: 50)
                    .background(Color.blue.gradient)
                    .cornerRadius(10)
            }
            .offset(y: -30)
        }
    }
}

#Preview {
    NewMuscleRoutineView(isPresented: .constant(false), day: "Test day")
}
