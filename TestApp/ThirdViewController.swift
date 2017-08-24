//
//  ThirdViewController.swift
//  TestApp
//
//  Created by Dan Dooley on 21/08/17.
//  Copyright © 2017 Dan Dooley. All rights reserved.
//

import UIKit

class ThirdViewController: UITableViewController {
    
    @IBOutlet weak var FrenchSwitch: UISwitch!
    
    @IBOutlet weak var NameField: UITextField!
    
    @IBAction func HiButton(_ sender: UIButton) {
        print("Button Pressed")
        
        let name = NameField.text
        if name == nil || name?.characters.count == 0 {
            return
        }
        
        var title, message, good, bad: String
        
        if FrenchSwitch.isOn {
            title = "Héy!"
            good = "Bien :)"
            bad = "Mal :("
            message = "Comment sa journée va " + name! + "?"
        } else {
            title = "Hey There!"
            good = "Good :)"
            bad = "Bad :)"
            message = "How's your day going " + name! + "?"
        }
        
        let alertController = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.alert)
        let goodAction = UIAlertAction(title: good, style: UIAlertActionStyle.default) {
            (result: UIAlertAction) -> Void in
            print(good)
        }
        let badAction = UIAlertAction(title: bad, style: UIAlertActionStyle.destructive) {
            (result: UIAlertAction) -> Void in
            print(bad)
        }
        
        
        alertController.addAction(goodAction)
        alertController.addAction(badAction)
        
        self.present(alertController, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
