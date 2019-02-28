//
//  ShelvingVC.swift
//  OrderInTheLibrary
//
//  Created by Aamina Munzir on 2/5/19.
//  Copyright © 2019 Aamina Munzir. All rights reserved.
//

import UIKit

class ShelvingVC: UIViewController {

    @IBOutlet weak var firstBookView: BookView!
    @IBOutlet weak var secondBookView: BookView!
    @IBOutlet weak var thirdBookView: BookView!
    @IBOutlet weak var fourthBookView: BookView!
    @IBOutlet weak var fifthBookView: BookView!
    
    @IBOutlet weak var userBookView: BookView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
