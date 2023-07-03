//
//  ViewController.swift
//  MINDWAY
//
//  Created by 신아인 on 2023/06/30.
//

import UIKit

class ViewController: BaseViewController {
    
    private let label = UILabel().then {
        $0.text = "~ saranghea ~"
        $0.font = UIFont.appleSDGothicNeoFont(size: 20, family: .Light)
    }
    
    override func addView(){
        [topLogoImage, label].forEach{view.addSubview($0)}
    }
    
    override func setLayout(){
        topLogoImage.snp.makeConstraints {
            $0.width.equalTo(48)
            $0.height.equalTo(70)
            $0.top.equalToSuperview().inset(40)
            $0.centerX.equalToSuperview()
        }
        label.snp.makeConstraints {
            $0.centerX.centerY.equalToSuperview()
        }
    }
}

