//
//  ViewController.swift
//  shopApp
//
//  Created by CANSU on 12.08.2024.
//

import UIKit

final class HomeViewController: UIViewController {
    //MARK: -variables
        
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var logoImageView: UIImageView!
    
  
    
    //MARK: -function
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        print("hello")
    }


    
}

