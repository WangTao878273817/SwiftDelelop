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
    var  titleArray : NSArray!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.initData()
        self.configView()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //测试字符串输出
    func testString(){
        let str1=titleArray.componentsJoined(by: ",")
        print(str1)
    }
    
    //初始化数据
    func initData(){
        titleArray=["玩游戏","看电视","听音乐","学英语","读小说","瞎玩"]
    }
    
    
    //配置视图
    func configView() {
        
        let tool=ToolsFromView()
        bgImg .addSubview(tool.imageDim(CGSize(width: bgImg.frame.size.width,height:bgImg.frame.size.height)))
        
        bodyTableView.delegate=self
        bodyTableView.dataSource=self
        bodyTableView.backgroundColor=UIColor.clear
        let nib = UINib(nibName:"TableViewCell",bundle:nil)
        bodyTableView.register(nib, forCellReuseIdentifier: "cells")
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView .dequeueReusableCell(withIdentifier: "cells") as! TableViewCell
        cell.title.text=titleArray.object(at: indexPath.row) as? String
        return cell

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
