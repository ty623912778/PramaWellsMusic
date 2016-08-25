//
//  HeaderCell.m
//  PramaWellsMusic
//
//  Created by mac on 16/8/24.
//  Copyright © 2016年 mac. All rights reserved.
//



#import "HeaderCell.h"
#import "UIImageView+WebCache.h"

@implementation HeaderCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    
}

- (void)setUserDict:(NSDictionary *)userDict {
    [self.listBgkImage sd_setImageWithURL:[NSURL URLWithString:[userDict[@"pics"] firstObject]] placeholderImage:[UIImage imageNamed:@"default.jpg"]];
    [self.typeImage sd_setImageWithURL:[NSURL URLWithString:[userDict[@"pics"] firstObject]] placeholderImage:[UIImage imageNamed:@"default.jpg"]];
    self.lblDesc.text = [userDict[@"nick_name"] stringByReplacingOccurrencesOfString:@"动听" withString:@"音乐"];
    self.lblSongCount.text = [userDict[@"label"] stringByReplacingOccurrencesOfString:@"动听" withString:@"音乐"];
}

@end
