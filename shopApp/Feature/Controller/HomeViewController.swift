//
//  ViewController.swift
//  shopApp
//
//  Created by CANSU on 12.08.2024.
//

import UIKit
import Alamofire
final class HomeViewController: UIViewController {
    //MARK: -variables
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var logoImageView: UIImageView!
    
    @IBOutlet weak var categorySegment: UISegmentedControl!
    var products : [Product] = []
    var filteredProducts : [Product] = []
    var rightButton : UIBarButtonItem?
    //MARK: -function
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        print("hello")
        fetchProducts()
        rightButton = UIBarButtonItem(image: UIImage(systemName: "cart"), style: .plain, target: self, action: #selector(cartButtonClicked))
        self.navigationItem.rightBarButtonItem = rightButton
        
    }
    
    @objc func cartButtonClicked() {
       print("tıklandı")
        
    }
    @objc func cartAddButtonClicked() {
        print("sepete eklendi")
        rightButton!.image = UIImage(systemName: "cart.fill")
    }
    
    func fetchProducts() {
        if let url = URL(string:NetworkHelper.BASE_URL) {
            NetworkManager.shared.request(url: url, method: .get) {( result : Result<[Product], AFError> ) in
                switch result{
                case .success(let value):
                    self.products = value
                    self.filteredProducts = self.products
                    self.tableView.reloadData()
                case .failure(let error):
                    print(error)
                }
            }
        }
    }
    
    @IBAction func categorySegmentClicked(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            filterProduct(category: "all")
        case 1:
            filterProduct(category: "men's clothing")
        case 2:
            filterProduct(category: "women's clothing")
        case 3:
            filterProduct(category: "jewelery")
        case 4:
            filterProduct(category: "electronics")
        default:
            print("error")
        }
    }
    func filterProduct(category: String) {
        if category == "all" {
            filteredProducts = products
        }
        else {
            filteredProducts = products.filter{$0.category == category}
        }
        tableView.reloadData()
    }
    
}

