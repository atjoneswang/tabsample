//
//  ToolViewController.swift
//  tabsample
//
//  Created by Jones on 2019/7/12.
//  Copyright © 2019 J40. All rights reserved.
//

import UIKit

class ToolViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.purple
        
        let button = UIButton(type: .system)
        button.tintColor = UIColor.white
        button.setTitle("Button", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        //view.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(button)
        
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        button.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        button.widthAnchor.constraint(equalToConstant: 100).isActive = true
        button.heightAnchor.constraint(equalToConstant: 60).isActive = true
        
        button.addTarget(self, action: #selector(pushview), for: .touchUpInside)
        
    }
    
    @objc func pushview(){
        navigationController?.pushViewController(PushViewController(), animated: true)
    }
    

}
