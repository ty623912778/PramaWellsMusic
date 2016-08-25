//
//  BodyCell.m
//  PramaWellsMusic
//
//  Created by mac on 16/8/24.
//  Copyright © 2016年 mac. All rights reserved.
//



#import "BodyCell.h"
#import "MusicModel.h"
#import "UIImageView+WebCache.h"

@implementation BodyCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    
    // Configure the view for the selected state
}

- (void)setModel:(MusicModel *)model {
   
    self.lblSingerName.text = model.singer_name;
    self.lblFavoriteCount.text = [NSString stringWithFormat:@"%ld", (long)model.pick_count];
 
}
@end
