//
//  UIColor+Extension.swift
//  Foursquare
//
//  Created by Anusree K Babu on 25/06/21.
//

import UIKit

extension UIColor {
    
    static func colorFor(hex: String) -> UIColor {
        let r, g, b, a: CGFloat

        if hex.hasPrefix("#") {
            print("1")
            let start = hex.index(hex.startIndex, offsetBy: 1)
            let hexColor = String(hex[start...])

            if hexColor.count == 6 {
                print("2")
                let scanner = Scanner(string: hexColor)
                print(scanner)
                var hexNumber: UInt64 = 0

                if scanner.scanHexInt64(&hexNumber) {
                    print("a")
                    r = CGFloat((hexNumber & 0xff0000) >> 16) / 255
                    print("for r\(CGFloat((hexNumber & 0xff00) >> 24))")
                    g = CGFloat((hexNumber & 0x00ff00) >> 8) / 255
                    b = CGFloat(hexNumber & 0x0000ff) / 255
                    a = 1
                    print(r, g, b, a)
                    return UIColor(red: r, green: g, blue: b, alpha: a)
                }
            }
        }
        return UIColor.clear
    }
    
    static func labelTextColor() -> UIColor {
        return colorFor(hex: "#b5abab")
    }
    
    static func textFieldTextColor() -> UIColor {
        return colorFor(hex: "#FFFFFF")
    }
}
