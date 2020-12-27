//
//  UIFont+Extensions.swift
//  Nubank
//
//  Created by Zewu Chen on 26/12/20.
//

import UIKit

extension UIFont {
    
    enum OpenSans {
        
        static var regular: UIFont {
            return UIFont(name: "OpenSans-Regular", size: 10) ?? systemFont(ofSize: 10)
        }
        
        static var italic: UIFont {
            return UIFont(name: "OpenSans-Italic", size: 10) ?? systemFont(ofSize: 10)
        }
        
        static var light: UIFont {
            return UIFont(name: "OpenSans-Light", size: 10) ?? systemFont(ofSize: 10)
        }
        
        static var lightItalic: UIFont {
            return UIFont(name: "OpenSans-LightItalic", size: 10) ?? systemFont(ofSize: 10)
        }
        
        static var semiBold: UIFont {
            return UIFont(name: "OpenSans-SemiBold", size: 10) ?? systemFont(ofSize: 10)
        }
        
        static var semiBoldItalic: UIFont {
            return UIFont(name: "OpenSans-SemiBoldItalic", size: 10) ?? systemFont(ofSize: 10)
        }
        
        static var bold: UIFont {
            return UIFont(name: "OpenSans-Bold", size: 10) ?? systemFont(ofSize: 10)
        }
        
        static var boldItalic: UIFont {
            return UIFont(name: "OpenSans-BoldItalic", size: 10) ?? systemFont(ofSize: 10)
        }
        
        static var extraBold: UIFont {
            return UIFont(name: "OpenSans-ExtraBold", size: 10) ?? systemFont(ofSize: 10)
        }
        
        static var extraBoldItalic: UIFont {
            return UIFont(name: "OpenSans-ExtraBoldItalic", size: 10) ?? systemFont(ofSize: 10)
        }
        
        static var optionFooterBar: UIFont {
            return UIFont(name: "OpenSans-Regular", size: 14) ?? systemFont(ofSize: 14)
        }
    }
}
