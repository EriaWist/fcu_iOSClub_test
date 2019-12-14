//
//  TabBar_switch.swift
//  fcu_iOSClub_test
//
//  Created by 阿騰 on 2019/12/14.
//  Copyright © 2019 阿騰. All rights reserved.
//

import UIKit

class TabBar_switch: UITabBarController {
    @IBOutlet weak var tab_bar: UITabBar!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tab_bar.isHidden = false
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

}
