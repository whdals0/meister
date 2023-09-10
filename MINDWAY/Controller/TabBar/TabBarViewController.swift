//
//  TabBarViewController.swift
//  MINDWAY
//
//  Created by 신아인 on 2023/06/30.
//

import UIKit

class TabBarViewController: UITabBarController, UITabBarControllerDelegate {
    
    let HEIGHT_TAB_BAR:CGFloat = 100
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.delegate = self
        
        let recommendVC = ViewController()
        let mainVC = MainViewController()
        let bookApplyVC = ViewController()
        let mypageVC = ViewController()
        
        tabBar.tintColor = UIColor(named: "green")
        tabBar.backgroundColor = .white
        
        // set tabbar shadow
        tabBar.layer.masksToBounds = false
        tabBar.layer.shadowColor = UIColor.black.cgColor
        tabBar.layer.shadowOpacity = 0.2
        tabBar.layer.shadowOffset = CGSize(width: 0, height: 0)
        tabBar.layer.shadowRadius = 6
        
        recommendVC.tabBarItem = UITabBarItem(title: "추천도서", image: UIImage(named: "recommend")?.withRenderingMode(.alwaysOriginal), selectedImage: UIImage(named: "recommend.fill")?.withRenderingMode(.alwaysOriginal))
        mainVC.tabBarItem = UITabBarItem(title: "이벤트", image: UIImage(named: "main")?.withRenderingMode(.alwaysOriginal), selectedImage: UIImage(named: "main.fill")?.withRenderingMode(.alwaysOriginal))
        bookApplyVC.tabBarItem = UITabBarItem(title: "도서신청", image: UIImage(named: "bookApply")?.withRenderingMode(.alwaysOriginal), selectedImage: UIImage(named: "bookApply.fill")?.withRenderingMode(.alwaysOriginal))
        mypageVC.tabBarItem = UITabBarItem(title: "마이", image: UIImage(named: "mypage")?.withRenderingMode(.alwaysOriginal), selectedImage: UIImage(named: "mypage.fill")?.withRenderingMode(.alwaysOriginal))
        
        let navigationRecommend = UINavigationController(rootViewController: recommendVC)
        let navigationMain = UINavigationController(rootViewController: mainVC)
        let navigationBookApply = UINavigationController(rootViewController: bookApplyVC)
        let navigationMypage = UINavigationController(rootViewController: mypageVC)
        
        setViewControllers([navigationRecommend, navigationMain, navigationBookApply, navigationMypage], animated: false)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        var tabFrame = self.tabBar.frame
        tabFrame.size.height = HEIGHT_TAB_BAR
        tabFrame.origin.y = self.view.frame.size.height - HEIGHT_TAB_BAR
        self.tabBar.frame = tabFrame
    }
}
