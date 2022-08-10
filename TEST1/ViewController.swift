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
                ///Dya nua
                if cal == "+" {
                    rs = num1 + num2
                }
                if cal == "-" {
                    rs = num1 - num2
                }
                
                if cal == "*" {
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
        case 13:
            let value = txtView.text ?? "0"
            num1 = Double(value)
            txtView.text = "\(num1/100)"
            break
        case 14:
            caculator(valueInput: ":")
            break
        case 15:
            caculator(valueInput: "*")
            break
        case 16:
            caculator(valueInput: "-")
            break
        case 17:
            caculator(valueInput: "+")
            break
        case 19:
            
            break
        default:
            break
            
        }
        
    }
    
    @IBAction func clickNumber(_ sender:Any){
        guard let button = sender as? UIButton else {
            return
        }
        
        switch button.tag {
        case 1:
            number(valueInput: "1")
            break
        case 2:
            number(valueInput: "2")
            break
        case 3:
            number(valueInput: "3")
            break
        case 4:
            number(valueInput: "4")
            break
        case 5:
            number(valueInput: "5")
            break
        case 6:
            number(valueInput: "6")
            break
        case 7:
            number(valueInput: "7")
            break
        case 8:
            number(valueInput: "8")
            break
        case 9:
            number(valueInput: "9")
            break
        case 0:
//            var value = txtView.text ?? ""
//            value += "0"
//            txtView.text=value
            number(valueInput: "0")
            break
        
        default:
            break
        }
    }
    
    func number(valueInput : String) {
        var value = txtView.text ?? ""
        value += valueInput
        txtView.text=value
    }
    func caculator(valueInput : String){
        let value = txtView.text ?? "0"
        num1 = Double(value)
        txtView.text = ""
        cal=valueInput
    }
}

