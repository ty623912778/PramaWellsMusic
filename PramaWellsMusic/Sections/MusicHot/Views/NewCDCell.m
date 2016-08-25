//
//  NewCDCell.m
//  PramaWellsMusic
//
//  Created by mac on 16/8/24.
//  Copyright © 2016年 mac. All rights reserved.
//
#import "NewCDCell.h"
#import "UIImageView+WebCache.h"
#import "UIImage+Scale.h"

@implementation NewCDCell

- (void)setModel:(NewCDModel *)model {
    //网落图片太大， 防止内存警告，每次请求清除一下内存
    [[SDImageCache sharedImageCache] clearMemory];
    [self.albumImage sd_setImageWithURL:[NSURL URLWithString:model.pic] placeholderImage:[UIImage imageNamed:@"default.jpg"]];
    self.lblAlbumSinger.text = [model.desc componentsSeparatedByString:@"-"][0];
    self.lblAlbumName.text = [model.desc componentsSeparatedByString:@"-"][1];
}
@end
