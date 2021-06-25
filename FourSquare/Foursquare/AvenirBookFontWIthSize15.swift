//
//  AvenirBookFontWIthSize18.swift
//  Foursquare
//
//  Created by Anusree K Babu on 25/06/21.
//

import UIKit

class AvenirBookFontWIthSize15: UILabel {
    
    override init(frame: CGRect) {
        
        super.init(frame: frame)
        self.configureLabelField()
    }
    
    required init?(coder: NSCoder) {
        
        super.init(coder: coder)
        self.configureLabelField()
    }
    
    func configureLabelField() {
        
        self.backgroundColor = UIColor.clear
        self.textColor = UIColor.labelTextColor()
        self.font = UIFont(name: "AvenirBook", size: 15)
        self.layer.borderColor = UIColor.clear.cgColor
    }
    
    
}
