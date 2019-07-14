//
//  PopupWindow.swift
//  tabsample
//
//  Created by Jones on 2019/7/14.
//  Copyright © 2019 J40. All rights reserved.
//

import UIKit

class PopupWindow: UIView {
    
    let button: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = UIColor.gray
        button.setTitle("Close Alert", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 5
        
        button.addTarget(self, action: #selector(handlePopup), for: .touchUpInside)
        return button
    }()
    
    
    var openWindower: Dialogfunc?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor.brown
        
        addSubview(button)
        button.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        button.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        button.widthAnchor.constraint(equalToConstant: 100).isActive = true
        button.heightAnchor.constraint(equalToConstant: 60).isActive = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    deinit {
        openWindower = nil
        print("PopupWindow deinit")
    }
    @objc func handlePopup(){
        openWindower?.closeDialog()
    }
    
}
