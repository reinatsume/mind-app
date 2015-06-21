//
//  ViewController2.swift
//  mind app
//
//  Created by 夏目怜奈 on 2015/06/18.
//  Copyright (c) 2015年 夏目怜奈. All rights reserved.
//

import UIKit

class ViewController2: UIViewController,UITextFieldDelegate,UIPickerViewDelegate {
    
    let myTextField2: UITextField = UITextField(frame: CGRectMake(0,0,200,30))
    
   @IBOutlet var myUIPicker1: UIPickerView!
    let myValues: NSArray = ["覚える","ひらめき","調べる","便利"]
    //myPicker1の項目
    

    @IBOutlet var myUIPicker2: UIPickerView!
    let myValues2: NSArray = ["まあまあ","普通","重要"]
    //myPicker2の項目
    
    var mindArray:[String] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //        let myTextFIeld: UITextField = UITextField(frame: CGRectMake(0,0,200,30))
        myTextField2.text = "what's new?"
        myTextField2.delegate = self
        myTextField2.borderStyle = UITextBorderStyle.RoundedRect
        myTextField2.layer.position = CGPointMake(self.view.bounds.width/2, 100)
        self.view.addSubview(myTextField2)
        
      myUIPicker1 = UIPickerView()
      myUIPicker1.delegate = self
      self.view.addSubview(myUIPicker1)
        
      myUIPicker2 = UIPickerView()
      myUIPicker2.delegate = self
      self.view.addSubview(myUIPicker2)
        
      
      
    }
    
func numberOfComponentsInPickerView(pickerview: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView!, numberOfComponent component: Int)->Int{
        return myValues.count
    
    
    func pickerView(pickerView: UIPickerView!, titleForRow row: Int, forComponent component: Int) -> String! { return myValues[row] as! String
    }
    
    func numberOfComponentsInPickerView2(pickerview: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView2(pickerView2: UIPickerView!, numberOfComponent component2: Int)->Int{
        return myValues2.count
    
    func pickerView2(pickerView2: UIPickerView!, titleForRow row2: Int, forComponent component2: Int) -> String! { return myValues2[row2] as! String
        }
        }
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
    
    /*@IBAction func changeTextColor(button: UIButton){
        let colors = [UIColor.redColor(), UIColor.yellowColor(), UIColor.greenColor(),UIColor.blueColor()]
        myTextField2.textColor = colors[button.tag]
        
    }
    */
    
    
    @IBAction func didTapmindButton() {
        self.mindArray.append(self.myTextField2.text)
        performSegueWithIdentifier("to3", sender: nil)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        if (segue.identifier == "to3") {
            
            var viewController3 : ViewController3 = segue.destinationViewController as!ViewController3
            viewController3.receiveArray = self.mindArray
            
        }
    }
}

