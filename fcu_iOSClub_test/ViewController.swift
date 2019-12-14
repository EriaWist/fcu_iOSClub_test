//
//  ViewController.swift
//  fcu_iOSClub_test
//
//  Created by 阿騰 on 2019/12/13.
//  Copyright © 2019 阿騰. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        // Do any additional setup after loading the view.
        let lginVC:UIViewController = ((storyboard?.instantiateViewController(withIdentifier: "loginID"))!)
        show(lginVC, sender: nil)
        //present(lginVC, animated: false, completion: nil)
    print("test")


}

}
