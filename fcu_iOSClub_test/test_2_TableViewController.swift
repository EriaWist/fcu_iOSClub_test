//
//  TableViewController.swift
//  fcu_iOSClub_test
//
//  Created by 阿騰 on 2019/12/21.
//  Copyright © 2019 阿騰. All rights reserved.
//

import UIKit

class test_2_TableViewController: UITableViewController {
    
    var name:[String]=["王小明","王大明"] //請設置14筆資料(0到13) 以逗號分隔
    var id:[String:Int]=["王小明":0700025,"王大明":5567755]//請設置14筆資料 資料內容為[name名稱:學號]
    
    
    var image_Max = 13//圖片最大數 假如添加圖片以 Avatar_第幾張圖 為名稱 考試無須理會 但可以自行添加
    
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
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

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
        if imag[indexPath.row] != nil
        {
            cell.imag.image = imag[indexPath.row]
        }
        
        // Configure the cell...
        
        
        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
