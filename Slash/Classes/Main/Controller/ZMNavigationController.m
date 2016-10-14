//
//  ZMNavigationController.m
//  Slash
//
//  Created by zemadr3 on 16/10/14.
//  Copyright © 2016年 zemadr. All rights reserved.
//

#import "ZMNavigationController.h"
#define navBgColor              [UIColor orangeColor]    //导航栏背景色
#define navTitleColor           [UIColor whiteColor]     //导航栏文字颜色(nomal)
#define navTitleDisableColor    [UIColor lightGrayColor] //导航栏文字颜色（disable）
@interface ZMNavigationController ()

@end

@implementation ZMNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
}
+(void)initialize{
    
    [self setupNavBar];
    [self setupNavBarItem];
}
#pragma mark - 设置navBar style
+(void)setupNavBar{
    UINavigationBar *navBar = [UINavigationBar appearance];
    //1.navbar background color
    navBar.barTintColor = navBgColor;
    
    //2.navbar back image color
    [navBar setTintColor:navTitleColor];
    
    //3.setup title font color and size
    navBar.titleTextAttributes = @{NSForegroundColorAttributeName:navTitleColor,NSFontAttributeName:[UIFont systemFontOfSize:18]};
}

#pragma mark -setup navbaritem style
+(void)setupNavBarItem{
    UIBarButtonItem *item = [UIBarButtonItem appearance];
    //1.nomal
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    dict[NSForegroundColorAttributeName] = navTitleColor;
    [item setTitleTextAttributes:dict forState:UIControlStateNormal];
    
    //2.disable
    NSMutableDictionary *disDict = [NSMutableDictionary dictionary];
    disDict[NSForegroundColorAttributeName] = [UIColor lightGrayColor];
    [item setTitleTextAttributes:disDict forState:UIControlStateDisabled];
    
    //3.hidden back text
    [item setBackButtonTitlePositionAdjustment:UIOffsetMake(0, -60)
                                 forBarMetrics:UIBarMetricsDefault];
}
#pragma mark -push的时候 隐藏底部tabbar
-(void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    viewController.hidesBottomBarWhenPushed = YES;
    [super pushViewController:viewController animated:animated];
}

@end
