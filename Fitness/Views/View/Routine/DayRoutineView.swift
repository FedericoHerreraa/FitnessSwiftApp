import SwiftUI

struct DayRoutineView: View {
    var day: String
    @State private var showAddRoutine: Bool = false
    @State private var dayRoutine: DayRoutine?
    
    @EnvironmentObject var routine: Routine
        
    func getRoutineForDay() -> DayRoutine? {
        return routine.days.first(where: { $0.dayName == day })
    }

    var body: some View {
        NavigationStack {
            VStack {
                if dayRoutine == nil || dayRoutine?.muscles.isEmpty == true {
                    EmptyState(imageName: "figure.core.training", text: "Todavía no tienes nada por aquí...")
                } else {
                    List {
                        ForEach(dayRoutine!.muscles) { muscle in
                            ShowCreatedRoutineView(muscle: muscle)
                        }
                    }
                    .listStyle(PlainListStyle())
                    .offset(y: 40)
                }
            }
            .navigationTitle("Día \(day)")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Image(systemName: "plus")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 20, height: 20)
                        .foregroundColor(Color("BrandColor"))
                        .onTapGesture {
                            showAddRoutine = true
                        }
                }
            }
            .sheet(isPresented: $showAddRoutine) {
                NewMuscleRoutineView(isPresented: $showAddRoutine, day: day)
            }
        }
        .onAppear {
            dayRoutine = getRoutineForDay()
        }
        .onChange(of: showAddRoutine) {
            if !showAddRoutine {
                dayRoutine = getRoutineForDay()
            }
        }
    }
}

#Preview {
    DayRoutineView(day: "Test day")
}
