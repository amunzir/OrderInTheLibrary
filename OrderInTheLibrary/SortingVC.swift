//
//  SortingVC.swift
//  OrderInTheLibrary
//
//  Created by Aamina Munzir on 2/5/19.
//  Copyright © 2019 Aamina Munzir. All rights reserved.
//

import UIKit

class SortingVC: UIViewController {

    var progressInLvl = 0
    
    @IBOutlet weak var userBook: BookView!
    
    @IBOutlet weak var bin1Label: UILabel!
    @IBOutlet weak var bin2Label: UILabel!
    @IBOutlet weak var bin3Label: UILabel!
    @IBOutlet weak var bin4Label: UILabel!
    
    @IBOutlet weak var lvl1BookIcon: UIImageView!
    @IBOutlet weak var lvl2BookIcon: UIImageView!
    @IBOutlet weak var lvl3BookIcon: UIImageView!
    @IBOutlet weak var lvl4BookIcon: UIImageView!
    @IBOutlet weak var lvl5BookIcon: UIImageView!
    @IBOutlet weak var lvl6BookIcon: UIImageView!
    @IBOutlet weak var lvl7BookIcon: UIImageView!
    @IBOutlet weak var lvl8BookIcon: UIImageView!
    @IBOutlet weak var lvl9BookIcon: UIImageView!
    @IBOutlet weak var lvl10BookIcon: UIImageView!
    //var userBook = BookViewCODE()
    
    let values = [100, 200, 300, 400, 500, 600, 700, 800, 900]
    let alphabet = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]
    var labelOneNum = 0
    var labelTwoNum = 0
    var labelThreeNum = 0
    var labelFourNum = 0
    var m = 0.0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        newGame()
        progressInLvl = 0
        
        //view.addSubview(makeBook(x: 0, y: 0, w: 300, h: 40, catagory: "999", author: "WOW"))
        // Do any additional setup after loading the view.
    }
    @IBAction func resetBtnPressed(_ sender: UIButton)
    {
        newGame()
        progressInLvl = 0
    }
    
    func newGame()
    {
        setBins()
        randomCatagory()
        randomAuthor()
        randomBookColor()
        //set book back to OG posotion if dragging
    }
    func randomCatagory()
    {
        /* Alex's random catagory algorithm */
        //userBook.catagoryLabel.text = "999"
        
        let x = Int.random(in: 1...5)
        if (x == 1)
        {
            userBook.catagoryLabel.text = "F"
        }
        else if (x == 2)
        {
            userBook.catagoryLabel.text = "B"
        }
        else
        {
            m = Double.random(in: 100.00...999.99)
            // if (checkDigit(b: Int(m))){
            //numberLabel.text = String(m)}
            while (!checkDigit(b: Int(m)))
            {
                m = Double.random(in: 100.00...999.99)
            }
            m = Double(round(1000*m)/1000)
            userBook.catagoryLabel.text = String(m)
        }
    }
    
    func checkDigit(b: Int) -> Bool
    {
        print(b)
        let digit = firstDigit(number: b)
        print(digit)
        let oneDigit = firstDigit(number: labelOneNum)
        let twoDigit = firstDigit(number: labelTwoNum)
        let thirdDigit = firstDigit(number: labelThreeNum)
        let fourDigit = firstDigit(number: labelFourNum)
        
        if ((digit == oneDigit) || (digit == twoDigit) || (digit == thirdDigit) || (digit == fourDigit))
        {
            return true
        }
        
        return false
    }
    
    func firstDigit(number: Int) -> Int
    {
        // var p = Int(number/100)
        // print(p)
        // return p
        return Int(number/100)
    }
    
    
    func randomAuthor()
    {
        /* Alex's random author algorithm */
        //userBook.authorLabel.text = "WOW"
        
        var name = ""
        for n in 0...2
        {
            name = name + String(alphabet[Int.random(in: 0...25)])
        }
        userBook.authorLabel.text = name
        
    }
    func randomBookColor()
    {
        /* Alex's random color algorithm? */
        userBook.bkgImageView.image = UIImage(named: "blueBook")
    }
    
    func setBins()
    {
        labelOneNum = values[Int.random(in: 0...8)]
        labelTwoNum = values[Int.random(in: 0...8)]
        labelThreeNum = values[Int.random(in: 0...8)]
        labelFourNum = values[Int.random(in: 0...8)]
        
        while (labelOneNum == labelTwoNum)
        {
            labelTwoNum = values[Int.random(in: 0...8)]
        }
        while ((labelThreeNum == labelTwoNum) || (labelThreeNum == labelOneNum))
        {
            labelThreeNum = values[Int.random(in: 0...8)]
        }
        while ((labelFourNum == labelTwoNum) || (labelFourNum == labelOneNum) || (labelFourNum == labelThreeNum))
        {
            labelFourNum = values[Int.random(in: 0...8)]
        }
        
        bin1Label.text = String(labelOneNum)
        bin2Label.text = String(labelTwoNum)
        bin3Label.text = String(labelThreeNum)
        bin4Label.text = String(labelFourNum)
    }
    
    func updateProgressBar()
    {
        if progressInLvl == 1
        {
            lvl1BookIcon.image = UIImage(named: "bookIcon")
        }
        else if progressInLvl == 2
        {
            lvl2BookIcon.image = UIImage(named: "bookIcon")
        }
        else if progressInLvl == 3
        {
            lvl3BookIcon.image = UIImage(named: "bookIcon")
        }
        else if progressInLvl == 4
        {
            lvl4BookIcon.image = UIImage(named: "bookIcon")
        }
        else if progressInLvl == 5
        {
            lvl5BookIcon.image = UIImage(named: "bookIcon")
        }
        else if progressInLvl == 6
        {
            lvl6BookIcon.image = UIImage(named: "bookIcon")
        }
        else if progressInLvl == 7
        {
            lvl7BookIcon.image = UIImage(named: "bookIcon")
        }
        else if progressInLvl == 8
        {
            lvl8BookIcon.image = UIImage(named: "bookIcon")
        }
        else if progressInLvl == 9
        {
            lvl9BookIcon.image = UIImage(named: "bookIcon")
        }
        else if progressInLvl == 10
        {
            lvl10BookIcon.image = UIImage(named: "bookIcon")
        }
        else
        {
            lvl1BookIcon.image = nil
        }
    }
    
    @IBAction func ficBtnPressed(_ sender: UIButton) {
    }
    @IBAction func bioBtnPressed(_ sender: UIButton) {
    }
    @IBAction func bin1BtnPressed(_ sender: UIButton) {
    }
    @IBAction func bin2BtnPressed(_ sender: UIButton) {
    }
    @IBAction func bin3BtnPressed(_ sender: UIButton) {
    }
    @IBAction func bin4BtnPressed(_ sender: UIButton) {
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    /*
    func makeBook(x: Int, y: Int, w: Int, h: Int, catagory: String, author: String) -> UIView
    {
        var catagoryLabel: UILabel = {
            let catagoryLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 300, height: 40))
            catagoryLabel.font = UIFont.systemFont(ofSize: 22, weight: .medium)
            catagoryLabel.text = catagory
            catagoryLabel.textAlignment = .center
            return catagoryLabel
        }()
        var authorLabel: UILabel = {
            let catagoryLabel = UILabel(frame: CGRect(x: 0, y: 40, width: 300, height: 40))
            catagoryLabel.font = UIFont.systemFont(ofSize: 22, weight: .medium)
            catagoryLabel.text = author
            catagoryLabel.textAlignment = .center
            return catagoryLabel
        }()
        
        var bookView: UIView = {
            let bookView = UIView(frame: CGRect(x: x, y: y, width: w, height: h))
            bookView.backgroundColor = UIColor(red: 22/255, green: 160/255, blue: 133/255, alpha: 0.5)
            bookView.layer.shadowColor = UIColor.gray.cgColor
            bookView.layer.shadowOffset = CGSize(width: 0, height: 10)
            bookView.layer.shadowOpacity = 1
            bookView.layer.shadowRadius = 5
            bookView.addSubview(catagoryLabel)
            bookView.addSubview(authorLabel)
            return bookView
        }()
        return bookView
    }
    */

}
