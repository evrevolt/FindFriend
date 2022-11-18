//
//  Models.swift
//  FindFriend
//
//  Created by Геннадий Ведерников on 16.11.2022.
//

import Foundation

struct Pet {
    let name: String
    let description: String
    let phone: String
    let image: String
}


extension Pet {
    static func getPetsList() -> [Pet] {
        let dataStore = DataStore.shared
        var petsList: [Pet] = []
        
        let names = dataStore.names.shuffled()
        let desctiprions = dataStore.descriptions.shuffled()
        let phones = dataStore.phones.shuffled()
        let images = dataStore.images.shuffled()
        
        let iterationCount = min(
            names.count,
            desctiprions.count,
            phones.count,
            images.count
        )
        
        for index in 0..<iterationCount {
            let pets = Pet(
                name: names[index],
                description: desctiprions[index],
                phone: phones[index],
                image: images[index]
            )
            
            petsList.append(pets)
        }
        
        return petsList
    }
}
