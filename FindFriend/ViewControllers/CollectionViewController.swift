//
//  CollectionViewController.swift
//  FindFriend
//
//  Created by Геннадий Ведерников on 16.11.2022.
//

import UIKit

//private let reuseIdentifier = "petCell"

class CollectionViewController: UICollectionViewController {
    
    let itemsPerRow: CGFloat = 2
    let sectionInserts = UIEdgeInsets(top: 20, left: 20, bottom: 20, right: 20)
    
    private var pets = Pets.getPetsList()

    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.showsVerticalScrollIndicator = false
        
        // Register cell classes
//        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)
    }

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        pets.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "petCell", for: indexPath) as! PetCollectionViewCell
        let pet = pets[indexPath.row]
        
        cell.petImageView.image = UIImage(named: pet.image)
        cell.petLabel.text = pet.name
        cell.pet = pet
        
        return cell
    }

    extension CollectionViewController: UICollectionViewDelegateFlowLayout {
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
            
            let paddingWidth = sectionInserts.left * (itemsPerRow + 1)
            let availableWidth = collectionView.frame.width - paddingWidth
            let widthPerItem = availableWidth / itemsPerRow
            return CGSize(width: widthPerItem, height: widthPerItem)
        }

        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
            return sectionInserts
        }
        
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
            return sectionInserts.left
        }

        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
            return sectionInserts.left
        }

    }

}
