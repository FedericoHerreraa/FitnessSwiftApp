import SwiftUI

struct SearchView: View {
    @StateObject private var viewModel = SearchViewModel()
    @Binding var tabSelected: Int

    var filteredExercises: [ExerciseDetail] {
        if viewModel.searchText.isEmpty {
            return Exercises.all
        } else {
            return Exercises.all.filter { $0.name.localizedCaseInsensitiveContains(viewModel.searchText) }
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
                .searchable(text: $viewModel.searchText, prompt: "Busca tu ejercicio!")
                .padding(5)
                .navigationTitle("Buscar Ejercicios")
                .toolbar {
                    ToolbarItem(placement: .topBarLeading) {
                        ToolBarTitle(title: "Fitness")
                    }
                    ToolbarItem(placement: .topBarTrailing) {
                        ToolBarIcon(isPreviewProfileOpen: $viewModel.isPreviewProfileOpen)
                    }
                }
                .sheet(isPresented: $viewModel.isPreviewProfileOpen) {
                    ProfilePreview(tabSelected: $tabSelected,
                                   previewProfileOpen: $viewModel.isPreviewProfileOpen)
                }
            }
            
        }
    }
}

#Preview {
    SearchView(tabSelected: .constant(0))
}
