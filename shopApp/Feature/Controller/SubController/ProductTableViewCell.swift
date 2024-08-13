//
//  ProductTableViewCell.swift
//  shopApp
//
//  Created by CANSU on 12.08.2024.
//

import UIKit

class ProductTableViewCell: UITableViewCell {

    @IBOutlet weak var productImageView: UIImageView!
    
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var productNameLabel: UILabel!
    
    
    @IBOutlet weak var cartButton: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        productImageView.layer.cornerRadius = 18
        self.layer.cornerRadius = 18
    }

 
    @IBAction func cartButtonClicked(_ sender: Any) {
        print("tıklandı")
    }
    
    
}
