//
//  NewCDCell.h
//  PramaWellsMusic
//
//  Created by mac on 16/8/24.
//  Copyright © 2016年 mac. All rights reserved.
//
#import <UIKit/UIKit.h>
#import "NewCDModel.h"

@interface NewCDCell : UICollectionViewCell
@property (nonatomic, strong) NewCDModel *model;

@property (weak, nonatomic) IBOutlet UIImageView *albumImage;
@property (weak, nonatomic) IBOutlet UILabel *lblAlbumName;
@property (weak, nonatomic) IBOutlet UILabel *lblAlbumSinger;

@end
