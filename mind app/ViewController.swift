//
//  ViewController.swift
//  mind app
//
//  Created by 夏目怜奈 on 2015/06/18.
//  Copyright (c) 2015年 夏目怜奈. All rights reserved.
//
import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    let myTextField: UITextField = UITextField(frame: CGRectMake(0,0,200,30))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //        let myTextFIeld: UITextField = UITextField(frame: CGRectMake(0,0,200,30))
        myTextField.text = "what's new?"
        myTextField.delegate = self
        myTextField.borderStyle = UITextBorderStyle.RoundedRect
        myTextField.layer.position = CGPointMake(self.view.bounds.width/2, 100)
        self.view.addSubview(myTextField)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldDidBeginEditing(textField: UITextField) {
        println("textFieldDidBeingEditing: \(textField.text)")
        
    }
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange,
        replacementString string: String) -> Bool {
            return true
    }
    func textFieldShouldEndEnding(textField: UITextField) -> Bool {
        println("textFieldShouldEndEnding: \(textField.text)")
        return true
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        println("textFieldShouldReturn: \(textField.text)")
        return true
    }
    
    @IBAction func changeTextColor(button: UIButton){
        let colors = [UIColor.redColor(), UIColor.orangeColor(), UIColor.yellowColor(), UIColor.greenColor(),UIColor.magentaColor(),UIColor.blueColor()]
        myTextField.textColor = colors[button.tag]
        
    }
}

        