//
//  ViewController.swift
//  2021-FoodPriceApp-Anh-Tran
//
//  Created by Anh Tran on 10/8/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var foodOrderTextField: UITextField!
    @IBOutlet weak var itemsPriceTotal: UITextView!
    
    let dishNames = ["pizza","salad","burger","pasta"]
    let dishPrice: [Double] = [19.99,14.99,15.99,18.99]
    
    var orderList: [Int] = []
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func orderButtonPressed(_ sender: UIButton) {
        var totalAmount = 0.0
        var receipt = ""
        let myDishOrder = foodOrderTextField.text!
        for index in 0 ..< dishNames.count {
                if myDishOrder == dishNames[index] {
//                    itemsPriceTotal.text = "\(myDishOrder): $\(dishPrice[index])"
                    orderList.append(index)
                }
        }
        for index in orderList {
                totalAmount += dishPrice[index]
                receipt += "\n\(dishNames[index]): $\(dishPrice[index])"
        }
        
        receipt += "\nTotal Amount: $\(totalAmount)"
        itemsPriceTotal.text = receipt
        
    }
    
}

