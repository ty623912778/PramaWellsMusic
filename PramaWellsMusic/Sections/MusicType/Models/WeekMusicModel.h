//
//  WeekMusicModel.h
//  PramaWellsMusic
//
//  Created by mac on 16/8/24.
//  Copyright © 2016年 mac. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WeekMusicModel : NSObject
@property (nonatomic, copy) NSString *ID;
@property (nonatomic, copy) NSString *title,*details, *pic_url;
@property (nonatomic, copy) NSString *time;
@property (nonatomic, strong) NSMutableArray *songlist;

@end
