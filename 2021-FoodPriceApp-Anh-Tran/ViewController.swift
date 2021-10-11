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
    @IBOutlet weak var foodImageView: UIImageView!
    
    struct FoodDish {
        var foodIndex: Int
        var name: String
        var price: Double
        var imageName: String
    }
    
    let foodMenu = [FoodDish(foodIndex: 0, name: "Pizza", price: 19.99, imageName: "pizza"),
                    FoodDish(foodIndex: 1, name: "Burger", price: 15.99, imageName: "hamburger"),
                    FoodDish(foodIndex: 2, name: "Salad", price: 12.99, imageName: "salad"),
                    FoodDish(foodIndex: 3, name: "Pasta", price: 17.99, imageName: "pasta")]
    var orderList: [FoodDish]  = []
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func orderButtonPressed(_ sender: UIButton) {
        var totalAmount = 0.0
        var receipt = ""
        let myDishOrder = foodOrderTextField.text!
        
        for item in foodMenu {
            if myDishOrder == item.name || myDishOrder == item.name.lowercased() {
                orderList.append(foodMenu[item.foodIndex])
                foodImageView.image = UIImage(named: "\(item.imageName)")
            }
        }
                
        for order in orderList{
            totalAmount += order.price
            receipt += "\n\(order.name) price is: $\(order.price)"
        }
        
        receipt += "\n\nTotal Amount: $\(totalAmount)"
        itemsPriceTotal.text = receipt
        
    }
    
}

