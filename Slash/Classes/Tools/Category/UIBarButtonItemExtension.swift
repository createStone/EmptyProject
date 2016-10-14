//
//  UIBarButtonItemExtension.swift
//  Slash1.2
//
//  Created by zemadr3 on 16/10/8.
//  Copyright © 2016年 MOOSON. All rights reserved.
//

import Foundation
import UIKit
extension UIBarButtonItem{
    // MARK: - 快速创建一个item
    convenience init(title:String,target:AnyObject,action:Selector) {
        let nextBtn = UIButton();
        nextBtn.setTitleColor(UIColor.hexToColor(valueRGB: 0x999999), for: .disabled);
        nextBtn.setTitleColor(UIColor.hexToColor(valueRGB: 0xffa726), for: .normal);
        nextBtn.setTitle(title, for: .normal);
        nextBtn.sizeToFit();
        nextBtn.addTarget(target, action: action, for: .touchUpInside)
        self.init(customView: nextBtn);
    }
}
