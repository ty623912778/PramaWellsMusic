//
//  VideoCell.m
//  0514
//
//  Created by mac on 16/8/17.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "VideoCell.h"
#import "UIImageView+WebCache.h"
#import "Video.h"

@interface VideoCell()

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UIImageView *authorImageView;
@property (weak, nonatomic) IBOutlet UILabel *authorTitle;
@property (weak, nonatomic) IBOutlet UILabel *playCountLabel;
@property (weak, nonatomic) IBOutlet UIButton *playButton;
@end


@implementation VideoCell



+ (instancetype)videoCellWithTableView:(UITableView *)tableView{
    VideoCell *cell = [tableView dequeueReusableCellWithIdentifier:@"videoCell"];
    if (cell == nil) {
        cell = [[NSBundle mainBundle] loadNibNamed:@"VideoCell" owner:self options:nil].lastObject;
    }
    return cell;
}
- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    
    // Configure the view for the selected state
}

- (void)setVideo:(Video *)video
{
    _video = video;
    [self.videoImageView sd_setImageWithURL:[NSURL URLWithString:video.cover]];
    
    [self.authorImageView sd_setImageWithURL:[NSURL URLWithString:video.topicImg]];
    
    self.titleLabel.text = video.title;
    self.authorTitle.text = video.topicName;
    self.playCountLabel.text = [NSString stringWithFormat:@"%zd次播放",video.playCount];
}







@end
