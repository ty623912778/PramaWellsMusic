//
//  HeaderCell.h
//  PramaWellsMusic
//
//  Created by mac on 16/8/24.
//  Copyright © 2016年 mac. All rights reserved.
//
#import <UIKit/UIKit.h>

@interface HeaderCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *typeImage;
@property (weak, nonatomic) IBOutlet UILabel *lblDesc;
@property (weak, nonatomic) IBOutlet UILabel *lblSongCount;
@property (weak, nonatomic) IBOutlet UIImageView *listBgkImage;

@property (nonatomic, strong) NSDictionary *userDict;
@end

