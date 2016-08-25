//
//  TabBarViewController.m
//  0514
//
//  Created by mac on 16/8/17.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "TabBarViewController.h"
#import "MusicViewController.h"
#import "FunnyViewController.h"
#import "NavigationController.h"


@interface TabBarViewController ()

@end

@implementation TabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    FunnyViewController *funny = [[FunnyViewController alloc] init];
    funny.title = @"搞笑";
    NavigationController *nav = [[NavigationController alloc] initWithRootViewController:funny];
    [self addChildViewController:nav];
    
    MusicViewController *music = [[MusicViewController alloc] init];
    music.title = @"音乐";
    NavigationController *nav2 = [[NavigationController alloc] initWithRootViewController:music];
    [self addChildViewController:nav2];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}



@end
