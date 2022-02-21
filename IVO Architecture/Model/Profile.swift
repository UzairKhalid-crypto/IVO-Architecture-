//
//  Profile.swift
//  IVO Architecture
//
//  Created by Devolper.Scorpio on 21/02/2022.
//

import Foundation

struct Profile : Identifiable{
    var id = UUID().uuidString
    var currentDate : Date
    var name : String
    
    init(currentDate: Date? = nil , name: String? = nil ){
        self.currentDate = currentDate ?? Date()
        self.name = name ?? ""
    }
    
}//:end
