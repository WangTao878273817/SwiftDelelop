//
//  UseStuckViewController.swift
//  SwiftDelelop
//
//  Created by shoule on 2016/12/13.
//  Copyright © 2016年 SaiDicaprio. All rights reserved.
//

struct test1 {
    var name:String
    var age:NSInteger
    func eat ()-> String {
        let result="我的名字叫\(name),\n我的年龄是\(age)"
        return result
    }
}

import UIKit


class UseStuckViewController: UIViewController {

    @IBAction func backClick(_ sender: AnyObject) {
        
        _=self.navigationController?.popViewController(animated: true)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let t=test1(name:"小明",age:12)
        print(t.eat())
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    



}
