//
//  SortingVC.swift
//  OrderInTheLibrary
//
//  Created by Aamina Munzir on 2/5/19.
//  Copyright © 2019 Aamina Munzir. All rights reserved.
//

import UIKit

class SortingVC: UIViewController {

    @IBOutlet weak var userBook: BookView!
    
    //var userBook = BookViewCODE()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userBook.authorLabel.text = "WOW"
        userBook.catagoryLabel.text = "999"
        //view.addSubview(makeBook(x: 0, y: 0, w: 300, h: 40, catagory: "999", author: "WOW"))
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
