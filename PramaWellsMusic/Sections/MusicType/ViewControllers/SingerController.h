//
//  SingerController.h
//  PramaWellsMusic
//
//  Created by mac on 16/8/24.
//  Copyright © 2016年 mac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SingerController : UIViewController
@property (nonatomic, strong) UINavigationController *navigation;
@property (nonatomic, copy) NSString *navTitle;
@property (nonatomic, strong) NSNumber *singerTypeID;
@end

