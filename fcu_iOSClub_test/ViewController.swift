//
//  ViewController.swift
//  fcu_iOSClub_test
//
//  Created by 阿騰 on 2019/12/13.
//  Copyright © 2019 阿騰. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var set_lab: UILabel!
    @IBOutlet weak var set_button: UIButton!
    @IBOutlet weak var hid_view: UIView!
    @IBAction func login(_ sender: Any) {
        let lginVC:UIViewController = ((storyboard?.instantiateViewController(withIdentifier: "loginID"))!)
        show(lginVC, sender: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        // Do any additional setup after loading the view.
        let sw = UserDefaults.standard.bool(forKey: "switch")
        if sw{
            login_in()
        }
        else
        {
            login_fale()
        }
        
    }

    func login_in() {
        set_button.isHidden = true
        set_lab.text = "登入成功"
        
    }
    func login_fale() {
        if let lginVC:UIViewController = storyboard?.instantiateViewController(withIdentifier: "loginID")
        {
            show(lginVC, sender: nil)
        }
    }
}
