//
//  SingerTypeModel.h
//  PramaWellsMusic
//
//  Created by mac on 16/8/24.
//  Copyright © 2016年 mac. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SingerTypeModel : NSObject
@property (nonatomic, strong) NSNumber *ID;
@property (nonatomic, copy) NSString *title, *details;
@property (nonatomic, copy) NSString *pic_url, *time;
@property (nonatomic, strong) NSNumber *count;
@end
