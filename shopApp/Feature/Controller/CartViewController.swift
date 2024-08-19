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
    
    @IBOutlet weak var emptyLabel: UIImageView!
    var cartProduct : [Product] = []
    // MARK: -func
    override func viewDidLoad() {
        super.viewDidLoad()
        checkOutButton.layer.cornerRadius = 18
        tableView.delegate = self
        tableView.dataSource = self
        emptyLabel.image = UIImage(named: "empty")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        tableView.reloadData()
        updateUI()
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
        if !cartProduct.isEmpty {
            let total = cartProduct.reduce(0) {$0 + $1.price}
            totalLabel.text = "Toplam tutar: \(total)$"
        }
    }
    func updateUI() {
        if cartProduct.isEmpty{
            tableView.isHidden = true
            emptyLabel.isHidden = false
            totalLabel.text = "SEPETİNİZ BOŞ!"
            totalLabel.textColor = .red
            checkOutButton.isHidden = true
        }else{
            tableView.isHidden = false
            emptyLabel.isHidden = true
            totalLabel.textColor = .black
            checkOutButton.isHidden = false
        }
    }
}
