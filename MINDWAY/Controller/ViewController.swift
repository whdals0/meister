//
//  ViewController.swift
//  MINDWAY
//
//  Created by 신아인 on 2023/06/30.
//

import UIKit

class ViewController: BaseViewController {

    let label = UILabel().then {
        $0.text = "~ saranghea ~"
        $0.font = UIFont.appleSDGothicNeoFont(size: 20, family: .Light)
    }
    
    override func addView(){
        [label].forEach{view.addSubview($0)}
    }
    override func setLayout(){
        label.snp.makeConstraints {
            $0.centerX.centerY.equalToSuperview()
        }
    }


}

