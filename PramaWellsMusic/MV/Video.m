//
//  Video.m
//  0514
//
//  Created by mac on 16/8/17.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "Video.h"
#import "YYModel.h"

@implementation Video
+ (NSDictionary *)modelCustomPropertyMapper {
    return @{@"desc" : @"description",
             };
}
@end
