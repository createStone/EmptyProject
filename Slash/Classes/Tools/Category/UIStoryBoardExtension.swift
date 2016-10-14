//
//  UIStoryBoardExtension.swift
//  Slash1.2
//
//  Created by zemadr3 on 16/9/28.
//  Copyright © 2016年 MOOSON. All rights reserved.
//

import Foundation
import UIKit
// MARK: - 加载控制器方法
extension UIStoryboard {
    /// 显示初始化的storyboard
    class func initialStoryboard(name:String) -> UIViewController?{
        let storyboard = UIStoryboard(name: name, bundle: nil);
        return storyboard.instantiateInitialViewController();
    }
    /// 初始化storyboard
    class func showInitialStoryboard(name:String){
        let vc = initialStoryboard(name: name);
        guard  vc != nil else {
            return;
        }
        UIApplication.shared.keyWindow?.rootViewController = vc;
    }
    ///初始化storyboard 并且返回制定的vc
    class func  initialStoryboard(name:String,vcId:String) -> UIViewController?{
         let storyboard = UIStoryboard(name: name, bundle: nil); 
        return storyboard.instantiateViewController(withIdentifier: vcId);
    }    
}
