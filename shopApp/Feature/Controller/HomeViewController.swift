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
    var products : [Product] = []
    
    
    //MARK: -function
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        print("hello")
        fetchProducts()
   
    }
    
    func fetchProducts() {
        if let url = URL(string:NetworkHelper.BASE_URL) {
            NetworkManager.shared.request(url: url, method: .get) {( result : Result<[Product], AFError> ) in
                switch result{
                case .success(let value):
                    self.products = value
                    self.tableView.reloadData()
                case .failure(let error):
                    print(error)
                }
            }
        }
    }
    
    
}

