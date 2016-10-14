//
//  MacroUtils.h
//  Slash
//
//  Created by zemadr3 on 16/10/14.
//  Copyright © 2016年 zemadr. All rights reserved.
//
//自定义NSLog
#ifdef DEBUG
#define DLog(...) NSLog(__VA_ARGS__)
#define DMethod() NSLog(@"%s", __func__)
#else
#define DLog(...)
#define DMethod()
#endif

#define EMPTY_STRING        @""

#define STR(key)            NSLocalizedString(key, nil)

#define PATH_OF_APP_HOME    NSHomeDirectory()
#define PATH_OF_TEMP        NSTemporaryDirectory()
#define PATH_OF_DOCUMENT    [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) objectAtIndex:0]


#define APP_VERSION         [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleVersion"]

#define RGB(A, B, C)        [UIColor colorWithRed:A/255.0 green:B/255.0 blue:C/255.0 alpha:1.0]
