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

let pets = [
    Pets(name: "Мурзик",
         petsType: .cat,
         description: "Этот котик попал к нам из мусорного бочка",
         image: "cat1.jpg"),
    
    Pets(name: "Шарик",
         petsType: .dog,
         description: "Этот дружище бегал по улице в поисках еды",
         image: "cat1.jpg"),
    
    Pets(name: "Мурзик",
         petsType: .cat,
         description: "Этот котик попал к нам из мусорного бочка",
         image: "cat1.jpg"),
    
    Pets(name: "Мурзик",
         petsType: .cat,
         description: "Этот котик попал к нам из мусорного бочка",
         image: "cat1.jpg"),
    
    Pets(name: "Мурзик",
         petsType: .cat,
         description: "Этот котик попал к нам из мусорного бочка",
         image: "cat1.jpg"),
    
    Pets(name: "Мурзик",
         petsType: .cat,
         description: "Этот котик попал к нам из мусорного бочка",
         image: "cat1.jpg"),
    
    Pets(name: "Мурзик",
         petsType: .cat,
         description: "Этот котик попал к нам из мусорного бочка",
         image: "cat1.jpg"),
    
    Pets(name: "Мурзик",
         petsType: .cat,
         description: "Этот котик попал к нам из мусорного бочка",
         image: "cat1.jpg"),
    
    Pets(name: "Мурзик",
         petsType: .cat,
         description: "Этот котик попал к нам из мусорного бочка",
         image: "cat1.jpg"),
    
    Pets(name: "Мурзик",
         petsType: .cat,
         description: "Этот котик попал к нам из мусорного бочка",
         image: "cat1.jpg")
]

func getPets() -> Pets {
    
    return pets.randomElement()!
    
}
