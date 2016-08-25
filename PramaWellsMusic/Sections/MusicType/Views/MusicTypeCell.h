//
//  MusicTypeCell.h
//  PramaWellsMusic
//
//  Created by mac on 16/8/24.
//  Copyright © 2016年 mac. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MusicTypeModel.h"
@interface MusicTypeCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *typeImage;
@property (weak, nonatomic) IBOutlet UILabel *lblTypeName;
@property (nonatomic, strong) MusicTypeModel *model;

@end
