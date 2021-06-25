//
//  SignUpController.swift
//  Foursquare
//
//  Created by Anusree K Babu on 25/06/21.
//

import UIKit

class SignUpController: UIViewController {
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var contentView: UIView!
    @IBOutlet weak var emailTextField: UITextField!
    
    var subViewHeight: CGFloat = 0.0
    var heightNotSet: Bool = false

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        print("New Project")
    }
    
    override func viewDidLayoutSubviews() {
        
        if let view = view as? BackgroundSettingsView {
          view.backgroundImage.frame = self.view.bounds
        }
        
        if (!heightNotSet) {
           if (UIDevice.current.orientation.isLandscape ) {
               
               subViewHeight = scrollView.frame.width
               print("Device is in landscape mode")
               heightNotSet = true
           } else {
               
               subViewHeight = scrollView.frame.height
               print("Device is in portrait mode")
               heightNotSet = true
           }
        }
       
           let height = NSLayoutConstraint(item: contentView ?? "", attribute: NSLayoutConstraint.Attribute.height, relatedBy: NSLayoutConstraint.Relation.equal, toItem: nil, attribute: NSLayoutConstraint.Attribute.notAnAttribute, multiplier: 1, constant: subViewHeight)
        
        contentView.addConstraint(height)
    }
}
