
import SwiftUI

struct CreateRutineView: View {
    var body: some View {
        NavigationView {
            VStack {
                List(WeekDays.weekDays) { day in
                    NavigationLink(destination: DayRoutineView(day: day.text)) {
                        HStack(spacing: 15) {
                            Image(systemName: "plus")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 15, height: 15)
                                .foregroundColor(.secondary)
                            
                            Text(day.text)
                                .font(.title2)
                                .fontWeight(.semibold)
                                .foregroundColor(Color("BrandColor"))
                        }
                        .padding(.vertical, 15)
                    }
                }
                .listStyle(PlainListStyle())
            }
            .navigationTitle("Dias de la semana")
        }
    }
}

#Preview {
    CreateRutineView()
}


