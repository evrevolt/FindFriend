//
//  PetCollectionViewCell.swift
//  FindFriend
//
//  Created by Asya Sher on 18.11.2022.
//

import UIKit

class PetCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet var petImageView: UIImageView! {
        didSet {
            petImageView.layer.cornerRadius = 10
        }
    }
    
    @IBOutlet var petLabel: UILabel!
    
    var pet: Pet!
}
