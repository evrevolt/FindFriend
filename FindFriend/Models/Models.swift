//
//  Models.swift
//  FindFriend
//
//  Created by Геннадий Ведерников on 16.11.2022.
//

import Foundation

struct Pets {
    let name: String
    let petsType: String
    let description: String
    let phone: String
    let image: String
}


extension Pets {
    static func getPetsList() -> [Pets] {
        let dataStore = DataStore.shared
        var petsList: [Pets] = []
        
        let names = dataStore.names.shuffled()
        let petsTypes = dataStore.petsTypes.shuffled()
        let desctiprions = dataStore.descriptions.shuffled()
        let phones = dataStore.phones.shuffled()
        let images = dataStore.images.shuffled()
        
        let iterationCount = min(
            names.count,
            petsTypes.count,
            desctiprions.count,
            phones.count,
            images.count
        )
        
        for index in 0..<iterationCount {
            let pets = Pets(
                name: names[index],
                petsType: petsTypes[index],
                description: desctiprions[index],
                phone: phones[index],
                image: images[index]
            )
            
            petsList.append(pets)
        }
        
        return petsList
    }
}
