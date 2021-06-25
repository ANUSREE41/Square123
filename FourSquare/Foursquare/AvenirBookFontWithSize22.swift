//
//  AvenirBookFontWithSize22.swift
//  Foursquare
//
//  Created by Anusree K Babu on 25/06/21.
//

import Foundation
import UIKit

class AvenirBookFontWithSize20: UITextField {
    
    override init(frame: CGRect) {
        
        super.init(frame: frame)
        self.configureTextField()
    }
    
    required init?(coder: NSCoder) {
        
        super.init(coder: coder)
        self.configureTextField()
    }
    
    func configureTextField(){
        
        self.backgroundColor = UIColor.clear
        self.textColor = UIColor.gray
        let bottomLine = CALayer()
        bottomLine.frame = CGRect(x: 0, y: self.frame.size.height - 1, width: self.frame.size.width, height: 1)
        bottomLine.backgroundColor = UIColor.white.cgColor
        layer.addSublayer(bottomLine)
        self.borderStyle = .none
        self.font = UIFont(name: "AvenirBook", size: 20)
    }
    
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        
        var newRect = bounds
        newRect.origin.x = 50
        newRect.size.width = bounds.size.width - 100
        newRect.inset(by: UIEdgeInsets(top: 15, left: 0, bottom: 15, right: 0))
        return newRect
    }
    
    
}
