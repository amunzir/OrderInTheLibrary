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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func sortingBtnPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "sortingSegue", sender: nil)
    }
    @IBAction func shelvingBtnPressed(_ sender: UIButton) {
    }
    @IBAction func reorderingBtnPressed(_ sender: UIButton) {
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
