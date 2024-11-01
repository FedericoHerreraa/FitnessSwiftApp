

import SwiftUI


struct UserObject: Codable {
    var firstName = ""
    var lastName = ""
    var email = ""
    var pass = ""
    var routine: [DayRoutine] = []
}

final class User: ObservableObject {
    @AppStorage("user") private var userData: Data?
    
    @Published var user = UserObject()
    @Published var firstName: String = ""
    @Published var lastName: String = ""
    @Published var email: String = ""
    @Published var pass: String = ""
    
    func addUser(routine: [DayRoutine]) {
//        guard isValidForm else { return }
        
        print(firstName)
        print(lastName)
        print(email)
        print(pass)
        
        user = UserObject(firstName: firstName,
                          lastName: lastName,
                          email: email,
                          pass: pass,
                          routine: routine)

        do {
            let data = try JSONEncoder().encode(user)
            userData = data
            print("User signIn correctly")
        } catch {
            print("There was an error signing in...")
        }
    }
    
    func getUser() {
        guard let userData else { return }
        
        do {
            user = try JSONDecoder().decode(UserObject.self, from: userData)
            print("User info retrieved successfully")
        } catch {
            print("There was an error taking the user from the db...")
        }
    }
    
    func updateUser() {}
    
    func logOut() {}
    
    var isValidForm: Bool {
        guard !firstName.isEmpty && !lastName.isEmpty && !pass.isEmpty && !email.isEmpty else {
            print("Form is invalid, please check!")
            return false
        }
        
        guard email.isValidEmail else {
            print("Invalid email, try again...")
            return false
        }
        return true
    }
}
