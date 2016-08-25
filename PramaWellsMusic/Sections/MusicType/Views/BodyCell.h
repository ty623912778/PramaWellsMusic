//
//  BodyCell.h
//  PramaWellsMusic
//
//  Created by mac on 16/8/24.
//  Copyright © 2016年 mac. All rights reserved.
//

#import <UIKit/UIKit.h>
@class MusicModel;

@interface BodyCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *songImage;
@property (weak, nonatomic) IBOutlet UILabel *lblSongName;
@property (weak, nonatomic) IBOutlet UILabel *lblSingerName;
@property (weak, nonatomic) IBOutlet UILabel *lblFavoriteCount;

@property (nonatomic, strong) MusicModel *model;
@end

