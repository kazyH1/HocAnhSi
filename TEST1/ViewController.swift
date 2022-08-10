//
//  ViewController.swift
//  TEST1
///Users/huynguyen/Desktop/HocA.Si/TEST1/TEST1/ViewController.swift
//  Created by HuyNguyen on 27/07/2022.
//

import UIKit

class ViewController: UIViewController {

    var cal:String!
    var num1:Double!
    var num2:Double!
    @IBOutlet weak var txtView: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // btn.layer.coneradius = ???;

    }


    @IBAction func btnResult(_ sender: Any) {
        let value = txtView.text ?? "0"
                num2 = Double(value)
                
        var rs :Double
        rs=0
                
                if cal == "+" {
                    rs = num1 + num2
                }
                
                if cal == "-" {
                    rs = num1 - num2
                }
                
                if cal == "x" {
                    rs = num1 * num2
                }
                
                if cal == ":" {
                    if num2 == 0{
                        txtView.text="LOI"
                    }
                    else {
                        rs = num1 / num2
                    }
                    
                }
                
                txtView.text = "\(rs)"
        
            }
        
   
    @IBAction func btnComma(_ sender: Any) {
    }
    @IBAction func clickCal(_ sender:Any){
        guard let button = sender as? UIButton else {
            return
        }
        switch button.tag {
        case 11:
            txtView.text=""
            break
        case 12:
            txtView.text = "-"
            break
        case 14:
            let value = txtView.text ?? "0"
            num1 =  Double(value)
            txtView.text = ""
            cal=":"
            break
        case 15:
            let value = txtView.text ?? "0"
            num1 =  Double(value)
            txtView.text = ""
            cal="*"
            break
        case 16:
            let value = txtView.text ?? "0"
            num1 = Double(value)
            txtView.text = ""
            cal="-"
            break
        case 17:
            let value = txtView.text ?? "0"
            num1 = Double(value)
            txtView.text = ""
            cal="+"
            break
        default:
            break
            
        }
        
    }
    @IBAction func btnPlus(_ sender: Any) {
    }
    @IBAction func btnMinus(_ sender: Any) {
    }
    @IBAction func btnMultil(_ sender: Any) {
    }
    @IBAction func btnDivide(_ sender: Any) {
    }
    @IBAction func btnPercent(_ sender: Any) {
    }
    @IBAction func btnNegative(_ sender: Any) {
    }
    @IBAction func btnClear(_ sender: Any) {
    }
    
    @IBAction func clickButton(_ sender:Any){
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

