//
//  Models.swift
//  FindFriend
//
//  Created by Геннадий Ведерников on 16.11.2022.
//

import Foundation

struct Pets {
    let name: String
    let petsType: PetsType
    let description: String
    let image: String
}

enum PetsType {
    case cat
    case dog
}

let names = ["Cat", "Dog"]

func getPets() -> Pets {
    
    return Pets(name: names.randomElement() ?? "nil",
                petsType: .cat,
                description: "Описание",
                image: "cat1.jpg")
    
}
