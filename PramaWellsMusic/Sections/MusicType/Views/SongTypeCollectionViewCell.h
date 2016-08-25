//
//  SongTypeCollectionViewCell.h
//  PramaWellsMusic
//
//  Created by mac on 16/8/24.
//  Copyright © 2016年 mac. All rights reserved.
//
#import <UIKit/UIKit.h>
@class SongTypeModel;

@interface SongTypeCollectionViewCell : UICollectionViewCell
@property (weak, nonatomic) IBOutlet UIImageView *typeImage;
@property (weak, nonatomic) IBOutlet UILabel *lblTitle;

@property (nonatomic, strong) SongTypeModel *model;
@end

