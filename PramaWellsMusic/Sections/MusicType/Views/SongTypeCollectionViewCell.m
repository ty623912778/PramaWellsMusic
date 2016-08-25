//
//  SongTypeCollectionViewCell.m
//  PramaWellsMusic
//
//  Created by mac on 16/8/24.
//  Copyright © 2016年 mac. All rights reserved.
//
#import "SongTypeCollectionViewCell.h"
#import "SongTypeModel.h"
#import "UIImageView+WebCache.h"

@implementation SongTypeCollectionViewCell


- (void)setModel:(SongTypeModel *)model {
    self.lblTitle.text = model.songlist_name;
    [self.typeImage sd_setImageWithURL:[NSURL URLWithString:model.pic_url_240_200] placeholderImage:[UIImage imageNamed:@"default.jpg"]];
}
@end

