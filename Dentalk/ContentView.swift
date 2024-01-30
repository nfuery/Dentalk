//
//  ContentView.swift
//  Dentalk
//
//  Created by Noah Fuery on 1/27/24.
//

import SwiftUI

    struct ValidationError: Identifiable {
        var id: UUID = UUID()
        var message: String
    }
struct ContentView: View {
    @State private var username: String = ""
    @FocusState private var focusedField: Field?
    @State private var textColor: Color = .red
    
    enum Field {
        case email
        // Add more fields as needed
    }
    
    @State private var alertMessage: ValidationError?
    
    var body: some View {
        VStack {
            Text(username)
            .foregroundColor(textColor) // Use the updated text color
            
            TextField(
                "User name (email address)",
                text: $username
            )
            .padding() // Add padding to the TextField
            .multilineTextAlignment(.center) // Center-align the text
            .font(.system(size: 16, weight: .bold)) // Make the text bolder
            .focused($focusedField, equals: .email)

            .textInputAutocapitalization(.never)
            .disableAutocorrection(true)
            .border(.secondary)

            Button(action: signIn) {
                Label("Sign In", systemImage: "arrow.up")
            }
        }
        .padding()
        .alert(item: $alertMessage) { error in
            Alert(title: Text("Validation Status"), message: Text(error.message), dismissButton: .default(Text("OK")))
        }
    }
    
    func isValidEmail(_ email: String) -> Bool {
        // Implement your email validation logic here
        // For simplicity, let's check if the email contains the "@" symbol
        return email.contains("@")
    }
    
    func signIn() {
        // You can add your sign-in logic here
        if isValidEmail(username) {
            // Show an alert for successful sign-in
            textColor = .blue
            alertMessage = ValidationError(message: "Successfully signed in with email: \(username)")
        } else {
            // Handle the case where the email is not valid (should not happen in this example)
            textColor = .red
            alertMessage = ValidationError(message: "Invalid email address!")
        }
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
