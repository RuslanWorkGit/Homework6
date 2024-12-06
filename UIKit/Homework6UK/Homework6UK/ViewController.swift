//
//  ViewController.swift
//  Homework6UK
//
//  Created by Ruslan Liulka on 06.12.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dicountImage: UIImageView!
    @IBOutlet weak var mainImage: UIImageView!
    
    @IBOutlet weak var productNameLabel: UILabel!
    @IBOutlet weak var productCodeLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainImage.image = UIImage(named: "MotherBoard")
        
        dicountImage.layer.cornerRadius = dicountImage.frame.height / 2
        dicountImage.image = UIImage(named: "FreeSend")
        
        productNameLabel.text = "Материнська плата Asus TUF Gaming B550M-Plus (sAM4, AMD B550, PCI-Ex16)"
        productCodeLabel.text = "Код 218525893"
    }


}

