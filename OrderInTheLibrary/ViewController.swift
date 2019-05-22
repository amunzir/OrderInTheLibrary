//
//  ViewController.swift
//  OrderInTheLibrary
//
//  Created by Aamina Munzir on 1/29/19.
//  Copyright © 2019 Aamina Munzir. All rights reserved.
//

import UIKit
var firstName = "jjj"
var lastName = "hoh"
var currentLvl = 0
var lvl1Done = false
var lvl2Done = false
var lvl3Done = false

class ViewController: UIViewController {
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func howTOBtnPressed(_ sender: UIButton)
    {
        performSegue(withIdentifier: "toHowToSegue", sender: nil)
        
        /*let alert = UIAlertController(title: "Sorry!", message: "This is unavailable at the moment", preferredStyle: UIAlertController.Style.alert)
        // add an action (button)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        // show the alert
        self.present(alert, animated: true, completion: nil)*/
    }
    @IBAction func creditsBtnPressed(_ sender: UIButton)
    {
        performSegue(withIdentifier: "toCreditsSegue", sender: nil)
        
        /*let alert = UIAlertController(title: "Sorry!", message: "This is unavailable at the moment", preferredStyle: UIAlertController.Style.alert)
        // add an action (button)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        // show the alert
        self.present(alert, animated: true, completion: nil)*/
    }
    
}

