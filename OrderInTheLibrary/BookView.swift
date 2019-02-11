//
//  BookView.swift
//  OrderInTheLibrary
//
//  Created by Aamina Munzir on 2/11/19.
//  Copyright © 2019 Aamina Munzir. All rights reserved.
//

import UIKit

class BookView: UIView {

    var catagory = "999"
    var author = "WOW"
    
    //initWithFrame to init view from code
    override init(frame: CGRect)
    {
        super.init(frame: frame)
        setupView()
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
