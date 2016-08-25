//
//  SingerModel.h
//  PramaWellsMusic
//
//  Created by mac on 16/8/24.
//  Copyright © 2016年 mac. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SingerModel : NSObject
@property (nonatomic, strong) NSNumber *singer_id;
@property (nonatomic, copy) NSString *singer_name, *pic_url;
@end