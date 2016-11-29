//
//  ToolsFromView.swift
//  SwiftDevelopDemo
//
//  Created by shoule on 2016/11/28.
//  Copyright © 2016年 SaiDicaprio. All rights reserved.
//

import UIKit

class ToolsFromView: NSObject {

    
    /**
     *  图片模糊处理
     *
     *  param:模糊图片的大小
     */
    func imageDim(_ imgSize : CGSize) -> UIView {
        let blurEffect = UIBlurEffect(style: UIBlurEffectStyle.light)
        
//        接着创建一个承载模糊效果的视图
        let blurView = UIVisualEffectView(effect: blurEffect)
//        设置视图的大小
        blurView.frame.size = CGSize(width: imgSize.width, height: imgSize.height)

        return blurView
    }
    
}
