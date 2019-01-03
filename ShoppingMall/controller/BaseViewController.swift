//
//  BaseViewController.swift
//  ShoppingMall
//
//  Created by Dharmendra Singh on 03/01/19.
//  Copyright © 2019 Dharmendra Pratap Singh. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {

    var count = 0
    var bagButton: BadgeButton? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bagButton = BadgeButton()
        bagButton!.frame = CGRect(x: 0, y: 0, width: 44, height: 44)
        bagButton!.tintColor = UIColor.darkGray
        bagButton!.setImage(UIImage(named: "cart")?.withRenderingMode(.alwaysTemplate), for: .normal)
        bagButton!.badgeEdgeInsets = UIEdgeInsets(top: 20, left: 0, bottom: 0, right: 15)
        bagButton?.addTarget(self, action: #selector(rightButtonTouched), for: .touchUpInside)
        
         self.navigationItem.rightBarButtonItem = UIBarButtonItem(customView: bagButton!)
       
    }
    
    @objc func rightButtonTouched() {
        print("right button touched")
    }
    
    func updateCartCount(count: String){
        bagButton?.badge = count
    }
}
