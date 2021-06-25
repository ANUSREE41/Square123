//
//  CustomeClassForBackground.swift
//  Foursquare
//
//  Created by Anusree K Babu on 25/06/21.
//

import UIKit

class BackgroundSettingsView: UIView {
    
    override init(frame: CGRect) {
        
        super.init(frame: frame)
        self.insertBackgroundImage()
    }
    
    required init?(coder: NSCoder) {
        
        super.init(coder: coder)
        self.insertBackgroundImage()
        
    }
    var backgroundImage = UIImageView()
    
    func insertBackgroundImage() {
        
        backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.image = UIImage.viewBackgroundImage()
        self.insertSubview(backgroundImage, at: 0)
    }
    
    
}
