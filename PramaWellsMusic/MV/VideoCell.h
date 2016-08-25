//
//  VideoCell.h
//  0514
//
//  Created by mac on 16/8/17.
//  Copyright © 2016年 mac. All rights reserved.
//

#import <UIKit/UIKit.h>
@class Video;
@interface VideoCell : UITableViewCell
@property (nonatomic, strong)Video *video;


@property (weak, nonatomic) IBOutlet UIImageView *videoImageView;

+ (instancetype)videoCellWithTableView:(UITableView *)tableView;



@end
