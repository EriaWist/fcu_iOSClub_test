//
//  viewDidLoadViewController.swift
//  fcu_iOSClub_test
//
//  Created by 阿騰 on 2019/12/15.
//  Copyright © 2019 阿騰. All rights reserved.
//

import UIKit

class viewDidLoadViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        UserDefaults.standard.set(false, forKey: "switch")
        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        if let vc = storyboard?.instantiateViewController(withIdentifier: "ViewController")
        {
            show(vc, sender: nil)
        }
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
