//
//  SingerCell.m
//  PramaWellsMusic
//
//  Created by mac on 16/8/24.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "SingerCell.h"
#import "UIImageView+WebCache.h"
#import "SingerModel.h"

@implementation SingerCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    
    // Configure the view for the selected state
}

- (void)setModel:(SingerModel *)model {
    self.photoImage.layer.cornerRadius = self.photoImage.frame.size.width / 2;
    self.photoImage.layer.masksToBounds = YES;
    [self.photoImage sd_setImageWithURL:[NSURL URLWithString:model.pic_url] placeholderImage:[UIImage imageNamed:@"default.jpg"]];
    self.lblName.text = model.singer_name;
}
@end
