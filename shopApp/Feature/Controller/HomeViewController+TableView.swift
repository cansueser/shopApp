//
//  HomeViewController+TableView.swift
//  shopApp
//
//  Created by CANSU on 12.08.2024.
//

import Foundation
import UIKit

extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ProductTableViewCell
        cell.priceLabel.text = "100tl"
        cell.productNameLabel.text = "Adidas ayakkabı"
        cell.productImageView.image = UIImage(named: "ayakkabi")
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
}
