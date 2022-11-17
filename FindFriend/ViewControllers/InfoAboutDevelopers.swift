//
//  InfoAboutDevelopers.swift
//  FindFriend
//
//  Created by Геннадий Ведерников on 16.11.2022.
//

import UIKit

class InfoAboutDevelopers: UIViewController {

    
    @IBOutlet var anastasiaImage: UIImageView!
    @IBOutlet var gennadyImage: UIImageView!
    
    @IBOutlet var anastasiaTextField: UILabel!
    @IBOutlet var gennadyTextField: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        anastasiaImage.frame.size.width = 200
        anastasiaImage.frame.size.height = 200
        anastasiaImage.image = UIImage(named: "cat1.jpg")
        
        gennadyImage.frame.size.width = 200
        gennadyImage.frame.size.height = 200
        gennadyImage.image = UIImage(named: "cat1.jpg")
        
    }
    
    
    @IBAction func doneTapped() {
        dismiss(animated: true)
    }
    
}
