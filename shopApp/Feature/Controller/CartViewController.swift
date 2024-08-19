//
//  CartViewController.swift
//  shopApp
//
//  Created by CANSU on 17.08.2024.
//

import UIKit

final class CartViewController: UIViewController {
    // MARK: -variables
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var checkOutButton: UIButton!
    var cartProduct : [Product] = []
    // MARK: -func
    override func viewDidLoad() {
        super.viewDidLoad()
        checkOutButton.layer.cornerRadius = 18
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    override func viewDidAppear(_ animated: Bool) {
        tableView.reloadData()
        totalPrice()
    }
    @IBAction func checkOutButtonClicked(_ sender: UIButton) {
    }
    
    func hasIn(product:Product)->Bool {
        if cartProduct.contains(product){
            return true
        }
        else{
            cartProduct.append(product)
            return false
        }
    }
    func totalPrice() {
        let total = cartProduct.reduce(0) {$0 + $1.price}
        totalLabel.text = "Toplam tutar: \(total)$"
    }
}
