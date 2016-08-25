//
//  MusicWeekHotCell.h
//  PramaWellsMusic
//
//  Created by mac on 16/8/24.
//  Copyright © 2016年 mac. All rights reserved.
//

#import <UIKit/UIKit.h>
@class WeekMusicModel;

@interface MusicWeekHotCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *weekImage;
@property (weak, nonatomic) IBOutlet UILabel *lblWeekTitle;
@property (weak, nonatomic) IBOutlet UILabel *lblSongFirst;
@property (weak, nonatomic) IBOutlet UILabel *lblSongSecond;
@property (weak, nonatomic) IBOutlet UILabel *lblSongThird;

@property (nonatomic, strong) WeekMusicModel *model;

@end

