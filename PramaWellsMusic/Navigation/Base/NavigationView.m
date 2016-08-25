//
//  NavigationView.m
//  PramaWellsMusic
//
//  Created by mac on 16/8/25.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "NavigationView.h"
#import "Public.pch"
@interface NavigationView ()

@end

@implementation NavigationView

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    self.edgesForExtendedLayout = UIRectEdgeNone;
    
    [self SetupNavigationView];
    
}


-(void)SetupNavigationView {
    self.navigationView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, screen_width, 64)];
    self.navigationView.backgroundColor = navigationBarColor;
    
    [self.view addSubview:self.navigationView];
}

- (void)setNavigationTitleText:(NSString *)navigationTitleText {
    CGSize labelSize = [navigationTitleText sizeWithAttributes:@{NSFontAttributeName:[UIFont boldSystemFontOfSize:17.0f]}];
    
    if (labelSize.width > screen_width) {
        labelSize.width = screen_width;
    }
    _navigationTitle = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, labelSize.width, 42)];
    CGPoint center = self.navigationView.center;
    center.y = center.y + 12;
    _navigationTitle.center = center;
    
    _navigationTitle.textColor = [UIColor whiteColor];
    _navigationTitle.numberOfLines = 1;
    _navigationTitle.lineBreakMode = NSLineBreakByTruncatingTail;
    _navigationTitle.textAlignment = NSTextAlignmentCenter;
    _navigationTitle.font = [UIFont boldSystemFontOfSize:17.0f];
    _navigationTitle.text = navigationTitleText;
    [self.navigationView addSubview:_navigationTitle];
}

- (void)setNavigationTitleView:(UIControl *)navigationTitleView{
    CGPoint titleView;
    titleView.x = screen_width / 2;
    titleView.y = self.navigationView.frame.size.height / 2 + 7;
    navigationTitleView.center = titleView;
    
    [self.navigationView addSubview:navigationTitleView];
}


- (void)setNavigationLeftButton:(UIButton *)navigationLeftButton{
    CGFloat leftButtonWidth = navigationLeftButton.frame.size.width;
    CGFloat leftButtonHeight = navigationLeftButton.frame.size.height;
    
    navigationLeftButton.frame = CGRectMake(10, self.navigationView.frame.size.height / 2 - 8, leftButtonWidth, leftButtonHeight);
    
    [self.navigationView addSubview:navigationLeftButton];
}

- (void)setNavigationRightButton:(UIButton *)navigationRightButton{
    CGFloat rightButtonWidth = navigationRightButton.frame.size.width;
    CGFloat rightButtonHeight = navigationRightButton.frame.size.height;
    
    navigationRightButton.frame = CGRectMake(screen_width - navigationRightButton.frame.size.width - 10, self.navigationView.frame.size.height / 2 - 8, rightButtonWidth, rightButtonHeight);
    
    [self.navigationView addSubview:navigationRightButton];
}

- (void)setNavigationLeftButtons:(NSArray<UIButton *> *)navigationLeftButtons{
    CGFloat firstLeftButtonWidth = navigationLeftButtons[0].frame.size.width;
    CGFloat firstLeftButtonHeight = navigationLeftButtons[0].frame.size.height;
    
    CGFloat secondLeftButtonWidth = navigationLeftButtons[1].frame.size.width;
    CGFloat secondLeftButtonHeight = navigationLeftButtons[1].frame.size.height;
    
    navigationLeftButtons[0].frame = CGRectMake(10, self.navigationView.frame.size.height / 2 - 8, firstLeftButtonWidth, firstLeftButtonHeight);
    navigationLeftButtons[1].frame = CGRectMake(10 + firstLeftButtonWidth + 8, self.navigationView.frame.size.height / 2 - 8, secondLeftButtonWidth, secondLeftButtonHeight);
    
    [self.navigationView addSubview:navigationLeftButtons[0]];
    [self.navigationView addSubview:navigationLeftButtons[1]];
}


- (void)setNavigationRightButtons:(NSArray<UIButton *> *)navigationRightButtons{
    CGFloat firstRightButtonWidth = navigationRightButtons[0].frame.size.width;
    CGFloat firstRightButtonHeight = navigationRightButtons[0].frame.size.height;
    
    CGFloat secondRightButtonWidth = navigationRightButtons[1].frame.size.width;
    CGFloat secondRightButtonHeight = navigationRightButtons[1].frame.size.height;
    
    navigationRightButtons[0].frame = CGRectMake(screen_width - 10 - firstRightButtonWidth, self.navigationView.frame.size.height / 2 - 8, firstRightButtonWidth, firstRightButtonHeight);
    navigationRightButtons[1].frame = CGRectMake(screen_width - 10 - firstRightButtonWidth - 8 - secondRightButtonWidth, self.navigationView.frame.size.height / 2 - 8, secondRightButtonWidth, secondRightButtonHeight);
    
    [self.navigationView addSubview:navigationRightButtons[0]];
    [self.navigationView addSubview:navigationRightButtons[1]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

@end

