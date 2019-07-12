//
//  ViewController.swift
//  tabsample
//
//  Created by Jones on 2019/7/12.
//  Copyright © 2019 J40. All rights reserved.
//

import UIKit

class MainTabController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        tabBar.barTintColor = UIColor.lightGray
        setTabBar()
    }

    func setTabBar() {
        let videoViewController = UINavigationController(rootViewController: VideoViewController())
        videoViewController.tabBarItem? = UITabBarItem(tabBarSystemItem: UITabBarItem.SystemItem.topRated, tag: 0)
        
        let toolViewControll = UINavigationController(rootViewController: ToolViewController())
        toolViewControll.tabBarItem = UITabBarItem(tabBarSystemItem: UITabBarItem.SystemItem.featured, tag: 1)
        
        let moreViewControll = UINavigationController(rootViewController: MoreViewController())
        moreViewControll.tabBarItem = UITabBarItem(tabBarSystemItem: UITabBarItem.SystemItem.bookmarks, tag: 1)
        
        viewControllers = [videoViewController,toolViewControll, moreViewControll]
    }
}

