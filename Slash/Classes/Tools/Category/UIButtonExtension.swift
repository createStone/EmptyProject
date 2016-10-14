//
//  UIButtonExtension.swift
//  Slash1.2
//
//  Created by zemadr3 on 16/9/29.
//  Copyright © 2016年 MOOSON. All rights reserved.
//

import Foundation
import UIKit

extension UIButton {
    ///设置按钮禁用的样式
    func setDisableStyle(){
        self.setTitleColor(UIColor.rgb(r: 51, g: 51, b: 51), for: .disabled);
        self.setBackgroundImage(UIColor.rgb(r: 235, g: 235, b: 235).toImage(), for: .disabled)
    } 
}
