//
//  SingerCollectionCell.h
//  PramaWellsMusic
//
//  Created by mac on 16/8/24.
//  Copyright © 2016年 mac. All rights reserved.
//
#import <UIKit/UIKit.h>
@class SingerTypeModel;

@interface SingerCollectionCell : UICollectionViewCell
@property (weak, nonatomic) IBOutlet UIImageView *faceImage;
@property (weak, nonatomic) IBOutlet UILabel *lblNameTag;

@property (nonatomic, strong) SingerTypeModel *model;

@end

