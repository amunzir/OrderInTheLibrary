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
    
    @IBOutlet weak var sixthBookView: BookView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setBooksFirst()
        
        
        // Do any additional setup after loading the view.
    }
    
    func setBooksFirst()
    {
        var books = [firstBookView, secondBookView, thirdBookView, fourthBookView, fifthBookView, sixthBookView]
        for book in books
        {
            book!.catagoryLabel.frame.origin = CGPoint(x: 97, y: 303)
            book!.catagoryLabel.frame.size.width = 90
            book!.catagoryLabel.frame.size.height = 30
            book!.catagoryLabel.font = UIFont.systemFont(ofSize: 20.0)
            book!.catagoryLabel.text = "000.000"
            
            book!.authorLabel.frame.origin = CGPoint(x: 97, y: 333)
            book!.authorLabel.frame.size.width = 90
            book!.authorLabel.frame.size.height = 30
            book!.authorLabel.font = UIFont.systemFont(ofSize: 20.0)
            book!.authorLabel.text = "MMM"
        }
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
