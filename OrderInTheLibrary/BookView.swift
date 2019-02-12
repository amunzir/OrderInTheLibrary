//
//  BookView.swift
//  OrderInTheLibrary
//
//  Created by Aamina Munzir on 2/12/19.
//  Copyright © 2019 Aamina Munzir. All rights reserved.
//

import UIKit

class BookView: UIView {

    @IBOutlet var contentView: UIView!
    @IBOutlet weak var bkgImageView: UIImageView!
    @IBOutlet weak var catagoryLabel: UILabel!
    @IBOutlet weak var authorLabel: UILabel!
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInIt()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInIt()
    }
    
    private func commonInIt()
    {
        Bundle.main.loadNibNamed("BookView", owner: self, options: nil)
        addSubview(contentView)
        contentView.frame = self.bounds
        contentView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
    }
    
}
