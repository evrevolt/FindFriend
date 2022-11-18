//
//  InfoAboutPets.swift
//  FindFriend
//
//  Created by Геннадий Ведерников on 16.11.2022.
//

import UIKit

class InfoAboutPets: UIViewController {

    
    @IBOutlet var descriptionLabel: UILabel!
    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var petImage: UIImageView!
    
    var pet: Pet!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        petImage.layer.cornerRadius = 10
        
        petImage.image = UIImage(named: pet.image)
        nameLabel.text = pet.name
        phoneLabel.text = "Телефон: " + pet.phone
        descriptionLabel.text = "Описание: " + pet.description
        
    }
    

}
