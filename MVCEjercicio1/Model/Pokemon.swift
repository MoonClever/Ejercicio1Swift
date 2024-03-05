//
//  Pokemon.swift
//  MVCEjercicio1
//
//  Created by User on 04/03/24.
//

import Foundation

struct Pokemon {
    let name : String
    let image : String
    let hab : String
    
    init(dict : [String : String]){
        self.name = dict["name"]!
        self.image = dict["image"]!
        self.hab = dict["hab"]!
    }
    
}
