//
//  ViewController.swift
//  Calculator
//
//  Created by Rafael Suarez on 2021-06-01.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtNumberA: UILabel!
    
    var OperatorClicked = true
    var OldNum = ""
    var SelectedOperator = "+"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func SelectNumber(_ sender: UIButton) {
        
        if (OperatorClicked == true){
            txtNumberA.text = " "
        }
        
        OperatorClicked = false
        var numbers = txtNumberA.text
        let senderTag = sender.tag
        
        if (senderTag == 1){
            numbers = numbers! + "1"
        }
        if (senderTag == 2){
            numbers = numbers! + "2"
        }
        if (senderTag == 3){
            numbers = numbers! + "3"
        }
        if (senderTag == 4){
            numbers = numbers! + "4"
        }
        if (senderTag == 5){
            numbers = numbers! + "5"
        }
        if (senderTag == 6){
            numbers = numbers! + "6"
        }
        if (senderTag == 7){
            numbers = numbers! + "7"
        }
        if (senderTag == 8){
            numbers = numbers! + "8"
        }
        if (senderTag == 9){
            numbers = numbers! + "9"
        }
        if (senderTag == 0){
            numbers = numbers! + "0"
        }
        txtNumberA.text = numbers
    }
    
    @IBAction func OperationEvent(_ sender: UIButton) {
        // 11
        //12
        //13
        //14
        let senderTag = sender.tag
     
        OperatorClicked = true
        OldNum = txtNumberA.text!
        
        
        if (senderTag == 11){
            SelectedOperator = "÷"
        }
        if (senderTag == 12){
           SelectedOperator = "*"
        }
        if (senderTag == 13){
           SelectedOperator = "-"
        }
        if (senderTag == 14){
           SelectedOperator = "+"
        }
    }
    
    @IBAction func CalculateResult(_ sender: Any) {
        
        let NewNum = txtNumberA.text
        var Result = 0
        
        let a = Int(OldNum) ?? 0
        let b = Int(NewNum!) ?? 0
        
        if ( SelectedOperator == "÷"){
           Result = a / b
        }
        if ( SelectedOperator == "*"){
           Result = a * b
        }
        if ( SelectedOperator == "-"){
            Result = a - b
         }
        if ( SelectedOperator == "+"){
           Result = a + b
        }
        
        print(a)
            print(b)
        print(OldNum)
        print(NewNum!)
//        print(type(of: OldNum))
//        print(type(of: NewNum))
//        txtNumberA.text = SelectedOperator
        txtNumberA.text = String(Result)
        

    }
}

