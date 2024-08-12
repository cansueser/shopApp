//
//  ViewController.swift
//  shopApp
//
//  Created by CANSU on 12.08.2024.
//

import UIKit

final class HomeViewController: UIViewController {
    //MARK: -variables
    
    @IBOutlet weak var testLabel: UILabel!
    //MARK: -function
    override func viewDidLoad() {
        super.viewDidLoad()
        print("hello")
        testLabel.text = "hello"
    }


}

