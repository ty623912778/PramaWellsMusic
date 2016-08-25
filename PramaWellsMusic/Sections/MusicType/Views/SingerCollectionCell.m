//
//  SingerCollectionCell.m
//  PramaWellsMusic
//
//  Created by mac on 16/8/24.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "SingerCollectionCell.h"
#import "SingerTypeModel.h"
#import "UIImageView+WebCache.h"

@implementation SingerCollectionCell
- (void)setModel:(SingerTypeModel *)model {
    
    self.faceImage.layer.shadowColor = [UIColor blackColor].CGColor;
    self.faceImage.layer.shadowOffset = CGSizeMake(0,0);
    self.faceImage.layer.shadowOpacity = 3.0;
    self.faceImage.layer.shadowRadius= 1.5;
    
    [self.faceImage sd_setImageWithURL:[NSURL URLWithString:model.pic_url] placeholderImage:[UIImage imageNamed:@"default.jpg"]];
    self.lblNameTag.text = model.title;
}
@end

