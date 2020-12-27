//
//  OptionFooterBarViewModel.swift
//  Nubank
//
//  Created by Zewu Chen on 27/12/20.
//

import Foundation
import UIKit

struct OptionFooterBarViewModel {
    
    let title: String
    let icon: UIImage
    
    init(option: OptionFooterBar) {
        self.title = option.title
        self.icon = UIImage(named: option.icon) ?? UIImage()
    }
}
