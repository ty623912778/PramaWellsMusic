//
//  MusicHotModel.m
//  PramaWellsMusic
//
//  Created by mac on 16/8/24.
//  Copyright © 2016年 mac. All rights reserved.
//



#import "MusicHotModel.h"

@implementation MusicHotModel
- (void)setValue:(id)value forUndefinedKey:(NSString *)key {
    if ([key isEqualToString:@"id"]) {
        self.ID = value;
    }
    if ([key isEqualToString:@"picUrl"]) {
        self.pic_url = value;
    }
    
    if ([key isEqualToString:@"listenCount"]) {
        self.listen_count = value;
    }
}
@end

