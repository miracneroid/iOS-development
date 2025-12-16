//
//  MenuItem.swift
//  Experimental Cafe
//
//  Created by miracneroid on 14/12/25.
//

import Foundation

struct MenuItem: Identifiable {
    
    var id: UUID = UUID()
    var name:String
    var price:String
    var imageName:String
}
