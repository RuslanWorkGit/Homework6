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
    
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var deliveryLabel: UILabel!
    @IBOutlet weak var timeDeliveryLabel: UILabel!
    
    @IBOutlet weak var creditBuyButton: UIButton!
    
    @IBOutlet weak var balanceButton: UIButton!
    @IBOutlet weak var cartButton: UIButton!
    @IBOutlet weak var heartButton: UIButton!
    @IBOutlet weak var buyNowButton: UIButton!
    
    @IBOutlet weak var firstStar: UIButton!
    @IBOutlet weak var secondStar: UIButton!
    @IBOutlet weak var thirdStar: UIButton!
    @IBOutlet weak var fourthStar: UIButton!
    @IBOutlet weak var fifthStar: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainImage.image = UIImage(named: "MotherBoard")
        
        dicountImage.layer.cornerRadius = dicountImage.frame.height / 2
        dicountImage.image = UIImage(named: "FreeSend")
        
        productNameLabel.text = "Материнська плата Asus TUF Gaming B550M-Plus (sAM4, AMD B550, PCI-Ex16)"
        productCodeLabel.text = "Код 218525893"
        
        priceLabel.text = "8 703 $"
        

        let freeDelivery = UILabel()
        freeDelivery.text = "БЕЗКОШТОВНО"
        freeDelivery.textColor = .systemGreen
        deliveryLabel.text = "Самовивіз з наших магазинів - \(freeDelivery.text!)"
        
        timeDeliveryLabel.text = "Забирати завтра з 12:00"
        
        let atributeTitle = NSAttributedString(
            string: "Купити в кредит",
            attributes: [
                .font: UIFont.boldSystemFont(ofSize: 20),
                .foregroundColor: UIColor.systemGreen
            ]
            )
        creditBuyButton.setAttributedTitle(atributeTitle, for: .normal)
        creditBuyButton.layer.cornerRadius = 10
        creditBuyButton.layer.borderWidth = 1
        creditBuyButton.layer.borderColor = UIColor.lightGray.cgColor
        
        balanceButton.setTitle("⚖️", for: .normal)
        
        cartButton.setImage(UIImage(systemName: "cart"), for: .normal)
        cartButton.tintColor = .darkGray
        cartButton.setTitle("", for: .normal)
        
        heartButton.setImage(UIImage(systemName: "heart"), for: .normal)
        heartButton.tintColor = .darkGray
        heartButton.setTitle("", for: .normal)
        

        let buyNowTitle = NSAttributedString(
            string: "Купити зараз",
            attributes: [
                .font: UIFont.boldSystemFont(ofSize: 18),
                .foregroundColor: UIColor.white
            ]
        )
        buyNowButton.setAttributedTitle(buyNowTitle, for: .normal)
        buyNowButton.backgroundColor = .systemGreen
        buyNowButton.layer.cornerRadius = 10
        
//        firstStar.setImage(UIImage(systemName: "star"), for: .normal)
//        firstStar.setTitle("", for: .normal)
//        firstStar.tintColor = .systemGray
//        secondStar.setImage(UIImage(systemName: "star"), for: .normal)
//        secondStar.setTitle("", for: .normal)
//        secondStar.tintColor = .systemGray
//        thirdStar.setImage(UIImage(systemName: "star"), for: .normal)
//        thirdStar.setTitle("", for: .normal)
//        thirdStar.tintColor = .systemGray
//        fourthStar.setImage(UIImage(systemName: "star"), for: .normal)
//        fourthStar.setTitle("", for: .normal)
//        fourthStar.tintColor = .systemGray
//        fifthStar.setImage(UIImage(systemName: "star"), for: .normal)
//        fifthStar.setTitle("", for: .normal)
//        fifthStar.tintColor = .systemGray
        
        resetStars()
    }
    
    func updateStars(rating: Int) {
        let stars = [firstStar, secondStar, thirdStar, fourthStar, fifthStar]
        
        for (index, star) in stars.enumerated() {
            if index < rating {
                star?.setImage(UIImage(systemName: "star.fill"), for: .normal)
                star?.tintColor = .systemYellow
            } else {
                star?.setImage(UIImage(systemName: "star"), for: .normal) // Порожня зірка
                star?.setTitle("", for: .normal)
                star?.tintColor = .systemGray
            }
        }
    }
    
    func resetStars() {
        updateStars(rating: 0)
    }

    @IBAction func creditBuyActionButton(_ sender: Any) {
        print("Button creddit buy pressed" )
    }
    
    @IBAction func compareButtonAction(_ sender: Any) {
        print("Button compare pressed" )
    }
    @IBAction func buyButtonAction(_ sender: Any) {
        print("Button buy pressed" )
    }
    @IBAction func likeButtonAction(_ sender: Any) {
        print("Button like pressed" )
    }
    @IBAction func buyNowButtonAction(_ sender: Any) {
        print("Button buy now pressed" )
    }
    
    
    
    @IBAction func firstStarAction(_ sender: Any) {
        updateStars(rating: 1)
    }
    @IBAction func secondStarAction(_ sender: Any) {
        updateStars(rating: 2)
    }
    @IBAction func thirdStarAction(_ sender: Any) {
        updateStars(rating: 3)
    }
    @IBAction func fourthStarAction(_ sender: Any) {
        updateStars(rating: 4)
    }
    @IBAction func fifthStarAction(_ sender: Any) {
        updateStars(rating: 5)
    }
}

