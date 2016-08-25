//
//  SingleImageCell.m
//  PramaWellsMusic
//
//  Created by mac on 16/8/24.
//  Copyright © 2016年 mac. All rights reserved.
//
#import "SingleImageCell.h"
#import "UIImageView+WebCache.h"

@implementation SingleImageCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
}

- (void)setModel:(MusicHotModel *)model {
    [self.titleImage sd_setImageWithURL:[NSURL URLWithString:model.pic_url] placeholderImage:[UIImage imageNamed:@"default.jpg"]];
    self.lblTitle.text = model.name;
    self.lblDesc.text = model.desc;
}

@end

