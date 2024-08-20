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
    
    @IBOutlet weak var couponCheck: UILabel!
    var price : Double?
    var discount : Double?
    //MARK: -func
    override func viewDidLoad() {
        super.viewDidLoad()
        applyButton.layer.cornerRadius = 8
        finishButton.layer.cornerRadius = 8
        if let price = price{
            PriceLabel.text = "\(price)$"
            totalPriceLabel.text = "\(price)$"
        }
    }
    
    @IBAction func applyButtonClicked(_ sender: UIButton) {
        discountAmount()
        if let discount = discount{
            discountPriceLabel.text = "%\(Int(discount * 100))"
        }
        totalPriceLabel.text = "\(discountCalculate())$"
        couponCheck.isHidden = false
        if totalPriceLabel.text == PriceLabel.text {
            couponCheck.textColor = .red
            couponCheck.text = "Hatalı kupon kodu"
        }else{
            couponCheck.textColor = .green
            couponCheck.text = "%\(Int(discount! * 100)) kupon kodu uygulandı"
        }
    }
    
    @IBAction func finishButtonClicked(_ sender: Any) {
        let alert = UIAlertController(title: "İşlem Onayı",
                                      message: "İşlem onaylanıyor, emin misiniz?",
                                      preferredStyle: .alert)
        
        let confirmAction = UIAlertAction(title: "Evet", style: .default) {_ in
            self.showAlert(title: "Başarılı", message: "Siparişiniz alınmıştır. İşlem başarılı.")
            self.navigationController?.popToRootViewController(animated: true)
        }
        let cancelAction = UIAlertAction(title: "İptal", style: .cancel) {_ in
        }
        alert.addAction(confirmAction)
        alert.addAction(cancelAction)
        self.present(alert,animated: true)
      
    }
    func discountAmount() {
        
        if let coupon = couponTextField.text{
            switch coupon{
            case "YAZ20":
                discount = 0.2
                break
            case "YAZ10":
                discount = 0.1
                break
            default:
                discount = 0
                break
            }
            
        }
    }
    func discountCalculate() ->Double{
        if let price = price,let discount = discount{
            return price - (price * discount)
        }
        return price ?? 0.0
    }
}
