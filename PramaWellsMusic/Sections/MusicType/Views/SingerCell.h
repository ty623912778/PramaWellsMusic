//
//  SingerCell.h
//  PramaWellsMusic
//
//  Created by mac on 16/8/24.
//  Copyright © 2016年 mac. All rights reserved.
//
#import <UIKit/UIKit.h>
@class SingerModel;

@interface SingerCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *photoImage;
@property (weak, nonatomic) IBOutlet UILabel *lblName;
@property (nonatomic, strong) SingerModel *model;

@end
