//
//  UIButton+Extension.swift
//  MINDWAY
//
//  Created by 새미 on 2023/07/08.
//

import UIKit

extension UIButton {
    
    func setUnderline() {
        guard let title = title(for: .normal) else { return }
        
        let attributedString = NSMutableAttributedString(string: title)
        attributedString.addAttributes([.underlineStyle: NSUnderlineStyle.single.rawValue], range: NSRange(location: 0, length: title.count))
        setAttributedTitle(attributedString, for: .normal)
    }
    
}
