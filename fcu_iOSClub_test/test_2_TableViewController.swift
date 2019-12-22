//
//  TableViewController.swift
//  fcu_iOSClub_test
//
//  Created by 阿騰 on 2019/12/21.
//  Copyright © 2019 阿騰. All rights reserved.
//

import UIKit

class test_2_TableViewController: UITableViewController {
//--------完成下方資料建立--------------------------
    var name:[String]=["王小明"] //請設置14筆資料(0到13) 以逗號分隔

    var id:[String:Int]=["王小明":0700025]//請設置14筆資料 資料內容為[name名稱:學號(數字部分)]
//-----------------------------------------------
    
    var image_Max = 13//圖片最大數14(0~13) 假如添加圖片以 Avatar_第幾張圖 為名稱 考試無須理會 但可以自行添加
    
    var imag:[UIImage] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        for i in 0...image_Max {
            var imagid = "Avatar_"
            imagid.append(String(i))
            if UIImage(named: imagid) != nil
            {
                imag.append(UIImage(named: imagid)!)
            }
            
        }
        
    }

    

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        
        return name.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        
        cell.name.text = name[indexPath.row]
        if let name_id = id[name[indexPath.row]]
        {
            cell.Id.text = "D" + String(name_id)
        }
        if imag[indexPath.row].imageAsset != nil
        {
            cell.imag.image = imag[indexPath.row]
        }
        
        // Configure the cell...
        
        
        return cell
    }
    

    

}

