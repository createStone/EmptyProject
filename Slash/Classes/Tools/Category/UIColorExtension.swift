//
//  UIColorExtension.swift
//  Slash1.2
//
//  Created by zemadr3 on 16/9/28.
//  Copyright © 2016年 MOOSON. All rights reserved.
//

import Foundation
import UIKit

// MARK: - 颜色扩展方法
extension UIColor{
    /// rgb 颜色
    class func rgb(r:CGFloat,g:CGFloat,b:CGFloat) -> UIColor {
        return UIColor(red: r / 255.0, green: g / 255.0, blue: b / 255.0, alpha: 1.0);
    }
    /// 16进制颜色
    class func hexToColor(valueRGB: UInt) -> UIColor{
        let red   = CGFloat((valueRGB & 0xFF0000) >> 16) / 255.0;
        let green = CGFloat((valueRGB & 0x00FF00) >> 8) / 255.0;
        let blue  = CGFloat(valueRGB & 0x0000FF) / 255.0;
        let alpha = CGFloat(1.0);
        
        return UIColor(red: red
            , green: green, blue: blue, alpha: alpha);
    }
    // MARK: - 随机颜色
    class func ramdomColor() -> UIColor{
        let randomRed:CGFloat = CGFloat(drand48())
        let randomGreen:CGFloat = CGFloat(drand48())
        let randomBlue:CGFloat = CGFloat(drand48())
        return UIColor(red: randomRed, green: randomGreen, blue: randomBlue, alpha: 1.0)
      
    }
    // MARK: - 颜色转图片
    func toImage()-> UIImage{
        let rect = CGRect(x: 0, y: 0, width: 1, height: 1);
        UIGraphicsBeginImageContext(rect.size);
        let context = UIGraphicsGetCurrentContext();
        context!.setFillColor(self.cgColor);
        context!.fill(rect)
        let image = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
        return image!;
    }
}
