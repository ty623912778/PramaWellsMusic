//
//  MusicHotCell.h
//  PramaWellsMusic
//
//  Created by mac on 16/8/24.
//  Copyright © 2016年 mac. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SDCycleScrollView.h"

@interface MusicHotCell : UITableViewCell<SDCycleScrollViewDelegate>
@property (weak, nonatomic) IBOutlet UIView *cycleView;
- (void)configureCycleImage:(NSMutableArray *)imageArr;
@property (nonatomic, copy) void(^currentIndex)(NSInteger index);
@end
