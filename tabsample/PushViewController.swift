//
//  PushViewController.swift
//  tabsample
//
//  Created by Jones on 2019/7/13.
//  Copyright © 2019 J40. All rights reserved.
//

import UIKit

protocol Dialogfunc {
    func closeDialog()
}

class PushViewController: UIViewController {

    // MARK: - Properties
    
    let button: UIButton = {
       let button = UIButton(type: .system)
        button.backgroundColor = UIColor.gray
        button.setTitle("Open Alert", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 5
        
        button.addTarget(self, action: #selector(handlePopup), for: .touchUpInside)
        return button
    }()
    
    let popupWindow: PopupWindow = {
       let view = PopupWindow()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 5
        return view
    }()
    
    deinit {
        
        print(" PushViewController deinit")
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.red
        
        view.addSubview(button)
        
        
        button.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        button.widthAnchor.constraint(equalToConstant: 100).isActive = true
        button.heightAnchor.constraint(equalToConstant: 60).isActive = true
        
        
        
    }
    

    override func viewWillAppear(_ animated: Bool) {
        tabBarController?.tabBar.isHidden = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        tabBarController?.tabBar.isHidden = false
    }
    
    @objc func handlePopup(){
        view.addSubview(popupWindow)
        popupWindow.openWindower = self
        popupWindow.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -40).isActive = true
        popupWindow.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        popupWindow.widthAnchor.constraint(equalToConstant: view.frame.width - 64).isActive = true
        popupWindow.heightAnchor.constraint(equalToConstant: view.frame.width - 64).isActive = true
    }
    
}


extension PushViewController: Dialogfunc{
    func closeDialog() {
        popupWindow.removeFromSuperview()
        self.navigationController?.popViewController(animated: true)
    }
}
