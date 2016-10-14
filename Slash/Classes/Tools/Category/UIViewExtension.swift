//
//  UIViewExtension.swift
//  Slash1.2
//
//  Created by zemadr3 on 16/9/28.
//  Copyright © 2016年 MOOSON. All rights reserved.
//

import Foundation
import UIKit

// MARK: - border方法扩充
extension UIView {
    // MARK: - layer加约束暂时还不会用
    func topBorder(color:UIColor,width:CGFloat =  minWidth){
        let layer = UIView();
        layer.backgroundColor  = color;
         self.addSubview(layer);
        layer.mas_makeConstraints { (make) in
            let _ = make?.left.equalTo()(self.mas_left);
            let _ = make?.right.equalTo()(self.mas_right);
            let _ = make?.top.equalTo()(self.mas_top);
            let _  = make?.height.equalTo()(width)
        }
    }
    
    func rightBorder(color:UIColor,width:CGFloat = minWidth){
        let layer = UIView();
        layer.backgroundColor  = color;
        self.addSubview(layer);
        layer.mas_makeConstraints { (make) in
            let _ = make?.bottom.equalTo()(self.mas_bottom);
            let _ = make?.right.equalTo()(self.mas_right);
            let _ = make?.top.equalTo()(self.mas_top);
            let _ = make?.width.equalTo()(width)
        } 
    }
    
    func bottomBorder(color:UIColor,width:CGFloat =  minWidth){
        let layer = UIView();
        layer.backgroundColor  = color;
        self.addSubview(layer);
        layer.mas_makeConstraints { (make) in
            let _ = make?.bottom.equalTo()(self.mas_bottom);
            let _ = make?.right.equalTo()(self.mas_right);
            let _ = make?.left.equalTo()(self.mas_left);
            let _ = make?.height.equalTo()(width)
        }
    }
    
    func leftBorder(color:UIColor,width:CGFloat = minWidth){
        let layer = UIView();
        layer.backgroundColor  = color;
        self.addSubview(layer);
        layer.mas_makeConstraints { (make) in
            let _ = make?.bottom.equalTo()(self.mas_bottom);
            let _ = make?.top.equalTo()(self.mas_top);
            let _ = make?.left.equalTo()(self.mas_left);
            let _ = make?.width.equalTo()(width)
        }
    }
}
