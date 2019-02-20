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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        newGame()
        
        //view.addSubview(makeBook(x: 0, y: 0, w: 300, h: 40, catagory: "999", author: "WOW"))
        // Do any additional setup after loading the view.
    }
    
    func newGame()
    {
        randomCatagory()
        randomAuthor()
        randomBookColor()
        //set book back to OG posotion if dragging
    }
    func randomCatagory()
    {
        /* Alex's random catagory algorithm */
        userBook.catagoryLabel.text = "999"
    }
    func randomAuthor()
    {
        /* Alex's random author algorithm */
        userBook.authorLabel.text = "WOW"
    }
    func randomBookColor()
    {
        /* Alex's random color algorithm? */
        userBook.bkgImageView.image = UIImage(named: "blueBook")
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
