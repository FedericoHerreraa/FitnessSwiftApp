import SwiftUI

struct SearchView: View {
    @State private var searchText = ""
    
    var filteredExercises: [Exercise] {
        if searchText.isEmpty {
            return Exercises.all
        } else {
            return Exercises.all.filter { $0.name.localizedCaseInsensitiveContains(searchText) }
        }
    }
    
    var body: some View {
        VStack(spacing: 0) {
            TopTitleView(title: "Buscar")
            NavigationView {
                List {
                    ForEach(filteredExercises) { exercise in
                        ExerciseViewCell(exercise: exercise)
                    }
                }
                .listStyle(PlainListStyle())
                .searchable(text: $searchText, prompt: "Busca tu ejercicio!")
            }
            
        }
    }
}

#Preview {
    SearchView()
}
