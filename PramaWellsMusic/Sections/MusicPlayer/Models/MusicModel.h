//
//  MusicModel.h
//  PramaWellsMusic
//
//  Created by mac on 16/8/24.
//  Copyright © 2016年 mac. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MusicModel : NSObject
@property (nonatomic, strong) NSNumber *singer_id, *song_id;
@property (nonatomic, copy) NSString *singer_name, *song_name;
@property (nonatomic, copy) NSString *album_name;//专辑名字
@property (nonatomic, strong) NSNumber *album_id;//专辑id
@property (nonatomic, assign) NSInteger pick_count;

@property (nonatomic, copy) NSString *pic_url;  //存储歌曲图片

@property (nonatomic, strong) NSMutableArray *url_list;

//排行数据中简介
@property (nonatomic, copy) NSString *alias;


@end

