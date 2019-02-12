//
//  BookView.swift
//  OrderInTheLibrary
//
//  Created by Aamina Munzir on 2/11/19.
//  Copyright © 2019 Aamina Munzir. All rights reserved.
//

import UIKit

class BookViewCODE: UIView {
    
    var catagory = "999"
    var author = "WOW"
    
    lazy var catagoryLabel: UILabel = {
        let catagoryLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 300, height: 40))
        catagoryLabel.font = UIFont.systemFont(ofSize: 22, weight: .medium)
        catagoryLabel.text = catagory
        catagoryLabel.textAlignment = .center
        return catagoryLabel
    }()
    lazy var authorLabel: UILabel = {
        let catagoryLabel = UILabel(frame: CGRect(x: 0, y: 40, width: 300, height: 40))
        catagoryLabel.font = UIFont.systemFont(ofSize: 22, weight: .medium)
        catagoryLabel.text = author
        catagoryLabel.textAlignment = .center
        return catagoryLabel
    }()
    
    lazy var bookView: UIView = {
        let bookView = UIView(frame: CGRect(x: 0, y: 0, width: 300, height: 40))
        bookView.backgroundColor = UIColor(red: 22/255, green: 160/255, blue: 133/255, alpha: 0.5)
        bookView.layer.shadowColor = UIColor.gray.cgColor
        bookView.layer.shadowOffset = CGSize(width: 0, height: 10)
        bookView.layer.shadowOpacity = 1
        bookView.layer.shadowRadius = 5
        bookView.addSubview(catagoryLabel)
        bookView.addSubview(authorLabel)
        return bookView
    }()

    
    
    //initWithFrame to init view from code
    override init(frame: CGRect)
    {
        super.init(frame: frame)
        setupView()//makeBook()
    }
    
    //initWithCode to init view from xib or storyboard
    required init?(coder aDecoder: NSCoder)
    {
        super.init(coder: aDecoder)
        setupView()
    }
    
    //common func to init our view
    private func setupView()
    {
        backgroundColor = .red
        addSubview(bookView)
    }
    
    
    func makeBook(x: Int, y: Int, w: Int, h: Int, catagory: String, author: String) -> UIView
    {
        return bookView
    }
    
    //how to make obj in code
    //let view = BookView(frame: CGRect(x: 0, y: 0, width: 300, height: 300))
    
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
