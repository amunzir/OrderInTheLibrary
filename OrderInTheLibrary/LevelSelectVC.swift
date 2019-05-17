//
//  LevelSelectVC.swift
//  OrderInTheLibrary
//
//  Created by Aamina Munzir on 2/5/19.
//  Copyright © 2019 Aamina Munzir. All rights reserved.
//

import UIKit

class LevelSelectVC: UIViewController {

    @IBOutlet weak var lvl1Image: UIImageView!
    @IBOutlet weak var lvl2Image: UIImageView!
    @IBOutlet weak var lvl3Image: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = firstName + " " + lastName
        checkLvlComp()

        // Do any additional setup after loading the view.
    }
    
    func checkLvlComp()
    {
        if lvl1Done
        {
            lvl1Image.image = UIImage(named: "ok")
        }
        if lvl2Done
        {
            lvl2Image.image = UIImage(named: "ok")
        }
        if lvl3Done
        {
            lvl3Image.image = UIImage(named: "ok")
        }
        
    }
    
    
    
    @IBAction func sortingBtnPressed(_ sender: UIButton) {
        currentLvl = 1
        performSegue(withIdentifier: "sortingSegue", sender: nil)
    }
    @IBAction func shelvingBtnPressed(_ sender: UIButton) {
        //currentLvl = 2
        //performSegue(withIdentifier: "shelvingSegue", sender: nil)
        // create the alert
        let alert = UIAlertController(title: "Sorry!", message: "This level is unavailable at the moment", preferredStyle: UIAlertController.Style.alert)
        // add an action (button)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        // show the alert
        self.present(alert, animated: true, completion: nil)
    }
    @IBAction func reorderingBtnPressed(_ sender: UIButton) {
        currentLvl = 3
        performSegue(withIdentifier: "reorderSegue", sender: nil)
    }
    
   
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
