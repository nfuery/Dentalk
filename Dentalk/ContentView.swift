//
//  ContentView.swift
//  Dentalk
//
//  Created by Noah Fuery on 1/27/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LazyVStack {
            Text("Welcome to Dentalk!")
                .font(.title)
                .foregroundColor(Color.black)
                .padding()
            Button("Sign In", systemImage: "arrow.down"){
                
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
