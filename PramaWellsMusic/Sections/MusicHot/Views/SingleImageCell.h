//
//  SingleImageCell.h
//  PramaWellsMusic
//
//  Created by mac on 16/8/24.
//  Copyright © 2016年 mac. All rights reserved.
//


#import <UIKit/UIKit.h>
#import "MusicHotModel.h"

@interface SingleImageCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *titleImage;
@property (weak, nonatomic) IBOutlet UILabel *lblTitle;
@property (weak, nonatomic) IBOutlet UILabel *lblDesc;
@property (nonatomic, strong) MusicHotModel *model;

@end
