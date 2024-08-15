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
    var product : Product?
    
    //MARK: -function
    override func viewDidLoad() {
        super.viewDidLoad()
        print("hello2")
        settingsDetail()
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
        }
        
        cartButton.layer.cornerRadius = 18
        detailView.layer.cornerRadius = 18
        productImageView.layer.cornerRadius = 18
    }
    
}
