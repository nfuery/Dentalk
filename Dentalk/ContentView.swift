//
//  ContentView.swift
//  Dentalk
//
//  Created by Noah Fuery on 1/27/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Welcome to Dentalk!")
                .font(.title)
                .foregroundColor(Color.black)
                .padding()
            Image(systemName: "person.line.dotted.person.fill")
                .foregroundColor(Color.black)
                .imageScale(.large)
            Spacer()
            Button("Sign In", systemImage: "arrow.up"){
                
            }
            

            
            
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
