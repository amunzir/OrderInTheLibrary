//
//  ReorderingVC.swift
//  OrderInTheLibrary
//
//  Created by Aamina Munzir on 2/5/19.
//  Copyright © 2019 Aamina Munzir. All rights reserved.
//

import UIKit

class ReorderingVC: UIViewController {
    
    @IBOutlet weak var firstBookView: BookView!
    @IBOutlet weak var secondBookView: BookView!
    @IBOutlet weak var thirdBookView: BookView!
    @IBOutlet weak var fourthBookView: BookView!
    @IBOutlet weak var fifthBookView: BookView!
    @IBOutlet weak var sixthBookView: BookView!
    
    var num1 = 0.00
    var num2 = 0.00
    var num3 = 0.00
    var num4 = 0.00
    var num5 = 0.00
    var num6 = 0.00
    var numArray = [Double]()
    
    let alphabet = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setBooksFirst()
        numArray = [num1, num2, num3, num4, num5, num6]
        numberArray()
        
        // Do any additional setup after loading the view.
    }
    
    func setBooksFirst()
    {
        let books = [firstBookView, secondBookView, thirdBookView, fourthBookView, fifthBookView, sixthBookView]
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
            var name = ""
            for _ in 0...2
            {
                name = name + String(alphabet[Int.random(in: 0...25)])
            }
            book!.authorLabel.text = name
        }
    }
    
    func numberArray()
    {
        for m in 0...5
        {
            var x = Double.random(in: 100.000...999.999)
            x = Double(round(1000*x)/1000)
            numArray[m] = x
        }
        firstBookView.catagoryLabel.text = String(numArray[0])
        secondBookView.catagoryLabel.text = String(numArray[1])
        thirdBookView.catagoryLabel.text = String(numArray[2])
        fourthBookView.catagoryLabel.text = String(numArray[3])
        fifthBookView.catagoryLabel.text = String(numArray[4])
        sixthBookView.catagoryLabel.text = String(numArray[5])
    }
    
    func numberCheck() -> Bool
    {
        for m in 0...5
        {
            if (m != 0)
            {
                print(m)
                if numArray[m] < numArray[m-1]
                {
                    return false
                }
            }
            if (m != 6)
            {
                if numArray[m] > numArray[m+1]
                {
                    return false
                }
            }
        }
        return true
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
