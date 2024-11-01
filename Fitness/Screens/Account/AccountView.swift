

import SwiftUI

struct AccountView: View {
    @EnvironmentObject var user: User
    @EnvironmentObject var routine: Routine
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Informacion Personal")) {
                    TextField("Nombre", text: $user.user.firstName)
                    
                    TextField("Apellido", text: $user.user.lastName)
                    
                    TextField("Direccion de Mail", text: $user.user.email)
                    
                    TextField("Contrasena", text: $user.user.pass)
                    
                    Button {
                        user.addUser(routine: routine.days)
                    } label: {
                        Text("Save Changes")
                            .frame(maxWidth: .infinity)
                    }
                }
            }
            .navigationTitle("Perfil")
        }
        .onAppear {
            user.getUser()
            print(user.user.firstName)
        }
    }
}

#Preview {
    AccountView()
}
