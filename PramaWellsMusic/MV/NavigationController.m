//
//  NavigationController.m
//  0514
//
//  Created by mac on 16/8/17.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "NavigationController.h"

@interface NavigationController ()

@end

@implementation NavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated{
    
    //如果当前push进来是第一个控制器的话，（代表当前childViewCtrls里面是没有东西）我们就不要设置leftitem
    if (self.childViewControllers.count) {
        
        viewController.hidesBottomBarWhenPushed = YES;
    }
    
    //自定义后退按钮后，手势返回上一级控制器的功能恢复
    self.interactivePopGestureRecognizer.delegate = nil;
    
    //这句代码的位置是一个关键
    [super pushViewController:viewController animated:animated];
    
}

@end
