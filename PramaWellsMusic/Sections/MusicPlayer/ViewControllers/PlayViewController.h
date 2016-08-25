//
//  PlayViewController.h
//  PramaWellsMusic
//
//  Created by mac on 16/8/24.
//  Copyright © 2016年 mac. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface PlayViewController : UIViewController
@property (nonatomic, strong) UINavigationController *navigation;
@property (nonatomic, strong) NSMutableArray *dataArr;
@property (nonatomic, assign) NSInteger currentIndex;
@property (nonatomic, copy)   NSString *pic_url;
@property (nonatomic, strong) AVPlayerItem *currentItem;
@end

