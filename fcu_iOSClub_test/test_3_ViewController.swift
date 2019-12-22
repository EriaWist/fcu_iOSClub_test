//
//  test_3_ViewController.swift
//  fcu_iOSClub_test
//
//  Created by 阿騰 on 2019/12/22.
//  Copyright © 2019 阿騰. All rights reserved.
//

import UIKit

class test_3_ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
            for i in 0...6
            {
                for j in 0...12
                {
                    let butle = UIView()
                    if (i == 3 || j == 3 || j == 2 || i==4)
                    {
                        butle.backgroundColor = .red
                    }
                    else
                    {
                        butle.backgroundColor = .blue
                    }
                    butle.frame = CGRect(x: 23+i*50, y: 70+j*50, width: 30, height: 30)
                    self.view.addSubview(butle)
                }
            }
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
