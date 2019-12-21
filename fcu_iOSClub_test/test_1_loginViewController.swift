//
//  loginViewController.swift
//  fcu_iOSClub_test
//
//  Created by 阿騰 on 2019/12/13.
//  Copyright © 2019 阿騰. All rights reserved.
//

import UIKit
class test_1_loginViewController: UIViewController {
    @IBOutlet weak var uese_input: UITextField! //帳號
    
    @IBOutlet weak var pws_input: UITextField!//密碼
    @IBAction func login_Button(_ sender: Any)/*登入按鈕按下之後*/ {
        var pws:String=" "
        var user:String=" "
        if uese_input.text != nil && pws_input.text != nil
        {
        user = uese_input.text! //帳號
        pws = pws_input.text!  //密碼
        }
        //帳號資料 user
        //密碼資料 pws
        //login_fall()//密碼錯誤
        //login_success() //假設密碼正確
        //請用if 完成帳密登入
        
        demo()
    }
    func demo() {
        var pws:String=" "
        var user:String=" "
        if uese_input.text != nil && pws_input.text != nil
        {
            user = uese_input.text! //帳號
             pws = pws_input.text!   //密碼
        }
        
        if user == "iOSClub" && pws == "1234"
        {
           login_success()
        }
        else
        {
            login_fall()
        }
    }
    override func viewDidLoad() {

        super.viewDidLoad()
        // Do any additional setup after loading the view.
        }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        UserDefaults.standard.set(false, forKey: "switch")
    }
    func login_success()/*測試內容不需理會 假如想理解可以問幹部*/ {
        UserDefaults.standard.set(true, forKey: "switch")
        //UserDefaults.removeObject("switch")
       // print(UserDefaults.standard.object(forKey: "switch") as! Bool)
        if let homevc = storyboard?.instantiateViewController(withIdentifier: "ViewController")
        {
            show(homevc, sender: nil)
        }
    }
    func login_fall() {
            let controller = UIAlertController(title: "密碼錯誤", message: "請重新輸入", preferredStyle: .alert)
              let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
              controller.addAction(okAction)
              present(controller, animated: true, completion: nil)
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


