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
    @IBOutlet weak var lvl4Image: UIImageView!
    @IBOutlet weak var lvl5Image: UIImageView!
    @IBOutlet weak var lvl6Image: UIImageView!
    @IBOutlet weak var lvl7Image: UIImageView!
    @IBOutlet weak var lvl8Image: UIImageView!
    @IBOutlet weak var lvl9Image: UIImageView!
    @IBOutlet weak var lvl10Image: UIImageView!
    @IBOutlet weak var lvl11Image: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var shelvingView: UIView!
    @IBOutlet weak var reorderView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        shelvingView.isHidden = true
        reorderView.isHidden = true
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
        if lvl4Done
        {
            lvl4Image.image = UIImage(named: "ok")
        }
        if lvl5Done
        {
            lvl5Image.image = UIImage(named: "ok")
        }
        if lvl6Done
        {
            lvl6Image.image = UIImage(named: "ok")
        }
        if lvl7Done
        {
            lvl7Image.image = UIImage(named: "ok")
        }
        if lvl8Done
        {
            lvl8Image.image = UIImage(named: "ok")
        }
        if lvl9Done
        {
            lvl9Image.image = UIImage(named: "ok")
        }
        if lvl10Done
        {
            lvl10Image.image = UIImage(named: "ok")
        }
        if lvl11Done
        {
            lvl11Image.image = UIImage(named: "ok")
        }
    }
    
    
    
    @IBAction func sortingBtnPressed(_ sender: UIButton) {
        currentLvl = 1
        performSegue(withIdentifier: "sortingSegue", sender: nil)
    }
    @IBAction func shelvingBtnPressed(_ sender: UIButton) {
        shelvingView.isHidden = false
    }
    @IBAction func reorderingBtnPressed(_ sender: UIButton) {
        reorderView.isHidden = false
    }
    
    
    @IBAction func lvl2Pressed(_ sender: UIButton) {
        currentLvl = 2
        performSegue(withIdentifier: "shelvingSegue", sender: nil)
    }
    @IBAction func lvl3Pressed(_ sender: UIButton) {
        currentLvl = 3
        performSegue(withIdentifier: "shelvingSegue", sender: nil)
    }
    @IBAction func lvl4Pressed(_ sender: UIButton) {
        currentLvl = 4
        performSegue(withIdentifier: "shelvingSegue", sender: nil)
    }
    @IBAction func lvl5Pressed(_ sender: UIButton) {
        currentLvl = 5
        performSegue(withIdentifier: "shelvingSegue", sender: nil)
    }
    @IBAction func lvl6Pressed(_ sender: UIButton) {
        currentLvl = 6
        performSegue(withIdentifier: "shelvingSegue", sender: nil)
    }
    @IBAction func lvl7Pressed(_ sender: UIButton) {
        currentLvl = 7
        performSegue(withIdentifier: "shelvingSegue", sender: nil)
    }
    @IBAction func lvl8Pressed(_ sender: UIButton) {
        currentLvl = 8
        performSegue(withIdentifier: "shelvingSegue", sender: nil)
    }
    @IBAction func shelfOUTPressed(_ sender: UIButton) {
        shelvingView.isHidden = true
    }
    
    
    @IBAction func lvl9Pressed(_ sender: UIButton) {
        currentLvl = 9
        performSegue(withIdentifier: "reorderSegue", sender: nil)
    }
    @IBAction func lvl10Pressed(_ sender: UIButton) {
        currentLvl = 10
        performSegue(withIdentifier: "reorderSegue", sender: nil)
    }
    @IBAction func lvl11Pressed(_ sender: UIButton) {
        currentLvl = 11
        performSegue(withIdentifier: "reorderSegue", sender: nil)
    }
    @IBAction func reorderOUTPressed(_ sender: UIButton) {
        reorderView.isHidden = true
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
