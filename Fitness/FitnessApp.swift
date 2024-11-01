
import SwiftUI

@main
struct FitnessApp: App {
    var routine = Routine()
    var user = User()
    
    var body: some Scene {
        WindowGroup {
            FitnessTabView()
                .environmentObject(routine)
                .environmentObject(user)
        }
    }
}
