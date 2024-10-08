//
//  ProductTableViewCell.swift
//  shopApp
//
//  Created by CANSU on 12.08.2024.
//

import UIKit
import Kingfisher

final class ProductTableViewCell: UITableViewCell {
    @IBOutlet weak var productImageView: UIImageView!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var productNameLabel: UILabel!
    @IBOutlet weak var cartButton: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        productImageView.layer.cornerRadius = 18
        self.layer.cornerRadius = 18
    }
    
    func mainConfigration(title: String, price: Double, imageURL: String) {
        productNameLabel.text = title
        priceLabel.text = "\(price)$"
        productImageView.kf.indicatorType = .activity
        productImageView.kf.setImage(with: URL(string: imageURL))
    }
}
