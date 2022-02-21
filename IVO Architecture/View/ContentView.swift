//
//  ContentView.swift
//  IVO Architecture
//
//  Created by Devolper.Scorpio on 21/02/2022.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var observed = Observerd()
    var body: some View {
        Text("Hello, \(observed.profile.name)")
            .onAppear {
                fetchProfile()
            }
    }
    func fetchProfile(){
        observed.fetchProfile { err in
            if let err = err{
                print(err.localizedDescription)
                return
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
