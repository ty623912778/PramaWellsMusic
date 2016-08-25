//
//  AuthViewController.h
//  PramaWellsMusic
//
//  Created by mac on 16/8/25.
//  Copyright © 2016年 mac. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <ShareSDK/ShareSDK.h>

@interface AuthViewController : UIViewController
- (instancetype)initWithAuthView:(UIView<ISSDKAuthView> *)authView;

@end
