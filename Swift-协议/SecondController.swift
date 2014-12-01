//
//  SecondController.swift
//  Swift-协议
//
//  Created by sen5labs on 14-10-11.
//  Copyright (c) 2014年 sen5labs. All rights reserved.
//

import UIKit

protocol SecondProtocol{
    func returnValue(text:String)
}

class SecondController: UIViewController {

    var textField: UITextField!
    
    var textStr:String!
    var secDelegate:SecondProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor.redColor()
        textField = UITextField(frame: CGRectMake(30, 100, 100, 30))
        textField.borderStyle = UITextBorderStyle.RoundedRect
        textField.text = "请输入值"
        self.view.addSubview(textField)
        
      var btn = UIButton(frame: CGRectMake(200, 100, 260, 30))
        btn.setTitle("click", forState: UIControlState.Normal)
        btn.addTarget(self, action: Selector("click"), forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(btn)
        
        println("\(textStr)")
    }

    func click() {

        let str:String = textField.text
        secDelegate?.returnValue(str)
        
        self.navigationController?.popViewControllerAnimated(true)
    }
  

}
