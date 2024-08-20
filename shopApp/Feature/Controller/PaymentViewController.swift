//
//  PaymentViewController.swift
//  shopApp
//
//  Created by CANSU on 19.08.2024.
//

import UIKit

final class PaymentViewController: UIViewController {
    //MARK: -variables
    
    @IBOutlet weak var finishButton: UIButton!
    @IBOutlet weak var totalPriceLabel: UILabel!
    @IBOutlet weak var discountPriceLabel: UILabel!
    @IBOutlet weak var PriceLabel: UILabel!
    @IBOutlet weak var applyButton: UIButton!
    @IBOutlet weak var couponTextField: UITextField!
    //MARK: -func
    override func viewDidLoad() {
        super.viewDidLoad()
        print("payment screen")

    }

    @IBAction func applyButtonClicked(_ sender: UIButton) {
    }
    
    @IBAction func finishButtonClicked(_ sender: Any) {
    }
    
}
