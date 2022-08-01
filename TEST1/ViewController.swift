//
//  ViewController.swift
//  TEST1
///Users/huynguyen/Desktop/HocA.Si/TEST1/TEST1/ViewController.swift
//  Created by HuyNguyen on 27/07/2022.
//

import UIKit

class ViewController: UIViewController {

    var cal:String!
    var num1:Int!
    var num2:Int!
    @IBOutlet weak var txtView: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // btn.layer.coneradius = ???;

                
                print("Git Tutorial")
          
        
    }

    @IBAction func btnClear(_ sender: Any) {
        txtView.text=""
    }
    
    @IBAction func btnNegative(_ sender: Any) {
        cal="*"
        let value = txtView.text ?? "0"
        num1 = Int(value)
        txtView.text = ""
    }

    @IBAction func btnPercent(_ sender: Any) {
        
    }
    @IBAction func btnDivide(_ sender: Any) {
        cal="/"
        let value = txtView.text ?? "0"
        num1 = Int(value)
        txtView.text = ""
    }
    @IBAction func btnMultil(_ sender: Any) {
        cal="*"
        let value = txtView.text ?? "0"
        num1 = Int(value)
        txtView.text = ""
    }
    @IBAction func btnMinus(_ sender: Any) {
        cal="-"
        let value = txtView.text ?? "0"
        num1 = Int(value)
        txtView.text = ""
    }
    
    @IBAction func btnPlus(_ sender: Any) {
        cal="+"
        let value = txtView.text ?? "0"
        num1 = Int(value)
        txtView.text = ""
    }
    @IBAction func btnResult(_ sender: Any) {
        let value = txtView.text ?? "0"
                num2 = Int(value)
                
                var result = 0
                
                if cal == "+" {
                    result = num1 + num2
                }
                
                if cal == "-" {
                    result = num1 - num2
                }
                
                if cal == "x" {
                    result = num1 * num2
                }
                
                if cal == "/" {
                    if num2 == 0 {
                        txtView.text="Loi"
                    } else {
                       result = num1 / num2
                    }
                
                txtView.text = "\(result)"
            }
        
    }
    @IBAction func btnComma(_ sender: Any) {
    }
    @IBAction func clickButton(_ sender: AnyObject) {
        guard let button = sender as? UIButton else {
            return
        }
        
        switch button.tag {
        case 1:
            var value = txtView.text ?? ""
            value += "1"
            txtView.text=value
            break
        case 2:
            var value = txtView.text ?? ""
            value += "2"
            txtView.text=value
            break
        case 3:
            var value = txtView.text ?? ""
            value += "3"
            txtView.text=value
            break
        case 4:
            var value = txtView.text ?? ""
            value += "4"
            txtView.text=value
            break
        case 5:
            var value = txtView.text ?? ""
            value += "5"
            txtView.text=value
            break
        case 6:
            var value = txtView.text ?? ""
            value += "6"
            txtView.text=value
            break
        case 7:
            var value = txtView.text ?? ""
            value += "7"
            txtView.text=value
            break
        case 8:
            var value = txtView.text ?? ""
            value += "8"
            txtView.text=value
            break
        case 9:
            var value = txtView.text ?? ""
            value += "9"
            txtView.text=value
            break
        case 0:
            var value = txtView.text ?? ""
            value += "0"
            txtView.text=value
            break
        
        default:
            break
        }
    }
    
}

