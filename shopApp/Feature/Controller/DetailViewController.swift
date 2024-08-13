//
//  DetailViewController.swift
//  shopApp
//
//  Created by CANSU on 13.08.2024.
//

import UIKit

final class DetailViewController: UIViewController {
    //MARK: -variables
    
    @IBOutlet weak var productImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var cartButton: UIButton!
    
    @IBOutlet weak var detailView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        print("hello2")
        productImageView.image = UIImage(named: "ayakkabi")
        titleLabel.text = "Adidas"
        priceLabel.text = "100 TL"
        descriptionLabel.text = "Siyah beyaz ayakkabı"
        cartButton.layer.cornerRadius = 18
        detailView.layer.cornerRadius = 18
        productImageView.layer.cornerRadius = 18
    }
    
    //MARK: -function

 
    @IBAction func cartButtonClicked(_ sender: UIButton) {
        print("sepete eklendi")
    }
    
}
