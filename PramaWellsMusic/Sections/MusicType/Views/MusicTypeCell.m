//
//  MusicTypeCell.m
//  PramaWellsMusic
//
//  Created by mac on 16/8/24.
//  Copyright © 2016年 mac. All rights reserved.
//



#import "MusicTypeCell.h"

@implementation MusicTypeCell


- (void)setModel:(MusicTypeModel *)model {
    self.typeImage.image = [UIImage imageNamed:model.typeImageName];
    _typeImage.layer.cornerRadius = 3;
    _typeImage.layer.masksToBounds = YES;
    self.lblTypeName.text = model.typeName;
}

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    
    // Configure the view for the selected state
}

@end
