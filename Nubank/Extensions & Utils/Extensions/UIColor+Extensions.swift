//
//  UIColor+Extensions.swift
//  Nubank
//
//  Created by Zewu Chen on 26/12/20.
//

import UIKit

extension UIColor {
    enum Nubank {
        static var white: UIColor {
            return UIColor(named: "nubankWhite") ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        }
        
        static var purpleUltraLight: UIColor {
            return UIColor(named: "nubankPurpleUltraLight") ?? #colorLiteral(red: 0.8901960784, green: 0.8078431373, blue: 0.937254902, alpha: 1)
        }
        
        static var purpleLight: UIColor {
            return UIColor(named: "nubankPurpleLight") ?? #colorLiteral(red: 0.5450980392, green: 0.1764705882, blue: 0.7490196078, alpha: 1)
        }
        
        static var purple: UIColor {
            return UIColor(named: "nubankPurple") ?? #colorLiteral(red: 0.4941176471, green: 0.09803921569, blue: 0.7176470588, alpha: 1)
        }
        
        static var grayLight: UIColor {
            return UIColor(named: "nubankGrayLight") ?? #colorLiteral(red: 0.9411764706, green: 0.9411764706, blue: 0.9411764706, alpha: 1)
        }
        
        static var gray: UIColor {
            return UIColor(named: "nubankGray") ?? #colorLiteral(red: 0.4392156863, green: 0.4392156863, blue: 0.4392156863, alpha: 1)
        }
        
        static var black: UIColor {
            return UIColor(named: "nubankBlack") ?? #colorLiteral(red: 0.09803921569, green: 0.09803921569, blue: 0.09803921569, alpha: 1)
        }
    }
}
