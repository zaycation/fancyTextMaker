//
//  ViewController.swift
//  fancyTextCreator
//
//  Created by Isaiah Thomas on 12/12/19.
//  Copyright © 2019 Mercury iOS Dev Team. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textEntry: UITextField!
    @IBOutlet weak var shadowButton: UIButton!
    var fontSize: CGFloat = 40
    var shadowState = false
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
    }
    
    @IBAction func enterText(_ sender: Any) {
        
        label.text = textEntry.text
        
    }
    
    
    @IBAction func redButton(_ sender: Any) {
        
        label.textColor = UIColor.red
        
        
    }
    
    
    @IBAction func blueButton(_ sender: Any) {
        
        label.textColor = UIColor.blue
        
    }
    
    @IBAction func greenButton(_ sender: Any) {
        
        label.textColor = UIColor.green
        
    }
    
    @IBAction func font1(_ sender: Any) {
        
        label.font = UIFont.init(name: "Blacksword", size: fontSize)
        
    }
    
    @IBAction func font2(_ sender: Any) {
        
        label.font = UIFont.init(name: "LemonMilk", size: fontSize)
        
    }
    
    @IBAction func font3(_ sender: Any) {
        
        label.font = UIFont.init(name: "Moon Flower", size: fontSize)
        
    }
    
    @IBAction func font4(_ sender: Any) {
        
        label.font = UIFont.init(name: "SugarstyleMillenial-Regular", size: fontSize)
        
    }
    
    @IBAction func shadowButton(_ sender: Any) {
        
        if shadowState == false {
        
            shadowState = true
            label.layer.shadowColor = UIColor.black.cgColor
            label.layer.shadowOffset = CGSize(width: -2, height: -1.5)
            label.layer.shadowRadius = 2
            label.layer.shadowOpacity = 0.35
            shadowButton.setTitle("Remove Shadow", for: UIControl.State.normal)
            
            
            
        } else {
            
            shadowState = false
            
            label.layer.shadowOpacity = 0
            shadowButton.setTitle("Add Shadow", for: UIControl.State.normal)
            
        }
        
        
    }
    
    @IBAction func smallButton(_ sender: Any) {
        
        
        
        fontSize = 30
        label.font = label.font.withSize(fontSize)
        
        
        
    }
    
    @IBAction func medButton(_ sender: Any) {
        
        fontSize = 40
        label.font = label.font.withSize(fontSize)
        
    }
    

    @IBAction func lrgButton(_ sender: Any) {
        
        fontSize = 50
        label.font = label.font.withSize(fontSize)
        
    }
    
    
}

