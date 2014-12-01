//
//  ViewController.swift
//  Swift-协议
//
//  Created by sen5labs on 14-10-11.
//  Copyright (c) 2014年 sen5labs. All rights reserved.
//

import UIKit

class ViewController: UIViewController,SecondProtocol{
    
    @IBOutlet weak var valueLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    @IBAction func push() {
        var secVC:SecondController = SecondController()
        
        secVC.secDelegate = self
        secVC.textStr = "1woo"
        self.navigationController?.pushViewController(secVC, animated: true)
    }
    
    func returnValue(text: String) {
        valueLabel.text = text
    }
}

