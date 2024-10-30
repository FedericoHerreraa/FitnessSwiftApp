import SwiftUI

struct SearchView: View {
    @State private var searchText = ""
    @State var isPreviewProfileOpen = false

    
    var filteredExercises: [Exercise] {
        if searchText.isEmpty {
            return Exercises.all
        } else {
            return Exercises.all.filter { $0.name.localizedCaseInsensitiveContains(searchText) }
        }
    }
    
    var body: some View {
        VStack(spacing: 0) {
            NavigationView {
                List {
                    ForEach(filteredExercises) { exercise in
                        NavigationLink(destination: ExerciseDetailView(exercise: exercise)) {
                            ExerciseViewCell(exercise: exercise)
                        }
                    }
                }
                .listStyle(PlainListStyle())
                .searchable(text: $searchText, prompt: "Busca tu ejercicio!")
                .padding(5)
                .navigationTitle("Buscar Ejercicios")
                .toolbar {
                    ToolbarItem(placement: .topBarLeading) {
                        ToolBarTitle(title: "Fitness")
                    }
                    ToolbarItem(placement: .topBarTrailing) {
                        ToolBarIcon(isPreviewProfileOpen: $isPreviewProfileOpen)
                    }
                }
                .sheet(isPresented: $isPreviewProfileOpen) {
                    ProfilePreview()
                }
            }
            
        }
    }
}

#Preview {
    SearchView()
}
