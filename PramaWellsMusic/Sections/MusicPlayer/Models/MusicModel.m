//
//  MusicModel.m
//  PramaWellsMusic
//
//  Created by mac on 16/8/24.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "MusicModel.h"

@implementation MusicModel
- (void)setValue:(id)value forUndefinedKey:(NSString *)key {
    if ([key isEqualToString:@"songId"]) {
        self.song_id = value;
    }
    if ([key isEqualToString:@"singerName"]) {
        self.singer_name = value;
    }
    if ([key isEqualToString:@"name"]) {
        self.song_name = value;
    }
    
    if ([key isEqualToString:@"albumName"]) {
        self.album_name = value;
    }
    if ([key isEqualToString:@"urlList"]) {
        self.url_list = value;
    }
    
    if ([key isEqualToString:@"favorites"]) {
        self.pick_count = [value integerValue];
    }
}
@end
