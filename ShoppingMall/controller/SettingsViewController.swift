//
//  SettingsViewController.swift
//  ShoppingMall
//
//  Created by Dharmendra Singh on 03/01/19.
//  Copyright © 2019 Dharmendra Pratap Singh. All rights reserved.
//

import UIKit

class SettingsViewController: BaseViewController {

    var num: Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func buttonPressed(_ sender: UIButton) {
          num += 1
        if num != 0{
            let badge = String(num)
            updateCartCount(count: badge)
            let trackIndexDict = ["count" : badge]
            NotificationCenter.default.post(name: .didReceiveData, object: self, userInfo: trackIndexDict)
        }
    }
    
}
