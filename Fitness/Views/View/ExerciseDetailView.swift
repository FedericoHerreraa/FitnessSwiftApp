
import SwiftUI

struct ExerciseDetailView: View {
    var exercise: Exercise?
    var stepNumber = 1
    
    var body: some View {
        VStack {
            Image(systemName: "figure.strengthtraining.traditional")
                .resizable()
                .frame(width: 80, height: 80)
            
            Text(exercise?.name ?? "No se pudo cargar el ejercicio")
                .font(.largeTitle)
                .padding(.bottom, 20)
                .foregroundColor(Color("BrandColor"))
            
            Text(exercise?.description ?? "No se pudo cargar la descripcion")
                .font(.body)
                .padding(.bottom, 10)
            
            List {
                ForEach(exercise?.steps ?? Exercises.defaultSteps) { step in
                    VStack(alignment: .leading) {
                        Text("Paso \(step.id): ")
                            .font(.title3)
                            .foregroundColor(Color("BrandColor"))
                        
                        Text(step.name)
                            .font(.body)
                            .fontWeight(.semibold)
                    }
                }
            }
            .listStyle(PlainListStyle())
            .padding(30)
            
            Spacer()
        }
        .padding(.top, 50)
    }
}

#Preview {
    ExerciseDetailView()
}
