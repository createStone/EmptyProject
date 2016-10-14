//
//  MarcoUtils.swift
//  Slash
//
//  Created by zemadr3 on 16/10/14.
//  Copyright © 2016年 zemadr. All rights reserved.
//

import UIKit

var UI_SCREEN_HEIGHT = UIScreen.main.bounds.size.width;
var ScreenHeigh = UIScreen.main.bounds.size.height;

var minWidth = 1.0 / UIScreen.main.scale;

var GlobalTintColor = UIColor.hexToColor(valueRGB: 0xffa726);

func DPrint<T>(_ message : T, file : String = #file, lineNumber : Int = #line) {
    
    #if DEBUG
        let fileName = (file as NSString).lastPathComponent
        print("[\(fileName):line:\(lineNumber)]- \(message)")
        
    #endif
    
}

/// 获得Document路径
func getDocumentsDirectory() -> URL {
    let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
    let documentsDirectory = paths[0]
    return documentsDirectory
}


/// 删除文件
func remoeFile(_ filePath : String){
    let fileManager = FileManager.default;
    if fileManager.fileExists(atPath: filePath)
    {
        do {
            try fileManager.removeItem(atPath: filePath);
        }catch{
            
        }
    }
    
}
