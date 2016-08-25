//
//  NavigationView.h
//  PramaWellsMusic
//
//  Created by mac on 16/8/25.
//  Copyright © 2016年 mac. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BarButtonItem.h"

@interface NavigationView : UIViewController
@property (strong, nonatomic) UIView *navigationView;
@property (strong, nonatomic) UIControl *navigationTitleView;
@property (strong, nonatomic) UILabel *navigationTitle;
@property (copy, nonatomic) NSString *navigationTitleText;
@property (strong, nonatomic) UIButton *navigationLeftButton;
@property (strong, nonatomic) UIButton *navigationRightButton;
@property (copy, nonatomic) NSArray<UIButton *> *navigationLeftButtons;
@property (copy, nonatomic) NSArray<UIButton *> *navigationRightButtons;
@end
