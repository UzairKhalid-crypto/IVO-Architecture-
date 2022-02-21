//
//  Observed_Extension.swift
//  IVO Architecture
//
//  Created by Devolper.Scorpio on 21/02/2022.
//

import Foundation

extension ContentView{
    class Observerd : ObservableObject{
        @Published var profile = Profile()
        //function
        func fetchProfile(completion: (Error?) -> ()) {
            let profile = Profile(name: "Uzair")
            DispatchQueue.main.asyncAfter(deadline: .now() + 1 ){
                self.profile = profile
            }
        }
    }
}
