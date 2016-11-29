//
//  MainViewController.swift
//  SwiftDevelopDemo
//
//  Created by shoule on 2016/11/25.
//  Copyright © 2016年 SaiDicaprio. All rights reserved.
//

import UIKit

class MainViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{

    @IBOutlet weak var bgImg: UIImageView!
    @IBOutlet weak var bodyTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    //配置视图
    func configView() {
        
        let tool=ToolsFromView()
        bgImg .addSubview(tool.imageDim(CGSize(width: bgImg.frame.size.width,height:bgImg.frame.size.height)))
        
        bodyTableView.delegate=self
        bodyTableView.dataSource=self
        bodyTableView.backgroundColor=UIColor.clear
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView .dequeueReusableCell(withIdentifier: "cell")
        if(cell == nil){
            cell=UITableViewCell()
        }
        cell?.textLabel?.text="hehe\(indexPath.row)"
        cell?.backgroundColor=UIColor.clear
//        cell?.selectionStyle=UITableViewCellSelectionStyleNone
        
        return cell!

    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
