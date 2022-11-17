//
//  DataStore.swift
//  FindFriend
//
//  Created by Геннадий Ведерников on 17.11.2022.
//

import Foundation

class DataStore {
    
    static let shared = DataStore()
    
    let user = "user"
    let password = "password"
    
    var names = [
        "John", "Aaron", "Tim", "Ted",
        "Steven", "Sharon", "Nicola",
        "Allan", "Bruce", "Carl"
    ]
    
    let petsTypes = [
        "Cat", "Dog", "Cat", "Dot",
        "Cat", "Dot", "Cat",
        "Dog", "Cat", "Dog"
    ]
    
    let descriptions = [
        "jjjj@mail.ru", "aaaa@mail.ru", "eeee@mail.ru",
        "hhhh@mail.ru", "wwww@mail.ru", "mmmm@mail.ru",
        "xxxx@mail.ru", "pppp@mail.ru", "ssss@mail.ru",
        "llll@mail.ru"
    ]
    
    
    let phones = [
        "745396026", "145036843", "287185656", "293520954",
        "562880225", "738594072", "825654134", "645898473",
        "432349845", "459477625"
    ]
    
    let images = [
        "1.jpg", "1.jpg", "1.jpg", "1.jpg",
        "1.jpg", "1.jpg", "1.jpg", "1.jpg",
        "1.jpg", "1.jpg"
    ]
    
    
    private init() {}
}
