//
//  DetailViewController.swift
//  shopApp
//
//  Created by CANSU on 13.08.2024.
//

import UIKit
import Kingfisher

final class DetailViewController: UIViewController {
    //MARK: -variables
    
    @IBOutlet weak var productImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var cartButton: UIButton!
    @IBOutlet weak var detailView: UIView!
    @IBOutlet weak var star1: UIImageView!
    @IBOutlet weak var star3: UIImageView!

    @IBOutlet weak var star5: UIImageView!
    @IBOutlet weak var star4: UIImageView!
    @IBOutlet weak var star2: UIImageView!
    
    @IBOutlet weak var rateCountLabel: UILabel!
    var product : Product?
   
    //MARK: -function
    override func viewDidLoad() {
        super.viewDidLoad()
        print("hello2")
        settingsDetail()
        getStar()
    }
    
    @IBAction func cartButtonClicked(_ sender: UIButton) {
        print("sepete eklendi")
    }
    func settingsDetail() {
        if let product = product {
            productImageView.kf.indicatorType = .activity
            productImageView.kf.setImage(with: URL(string: product.image))
            titleLabel.text = product.title
            priceLabel.text = "\(product.price)$"
            descriptionLabel.text = product.description
            rateCountLabel.text = "(\(product.rating.count))"
        }
        
        cartButton.layer.cornerRadius = 18
        detailView.layer.cornerRadius = 18
        productImageView.layer.cornerRadius = 18
    }
    func getStar() {
        let stars = [star1,star2,star3,star4,star5]
        var count = 0
        let rate = Int((product?.rating.rate)!)
        for star in stars {
            if count < rate{
                star?.image = UIImage(systemName: "star.fill")
            }
            count += 1
        }
    }
}

