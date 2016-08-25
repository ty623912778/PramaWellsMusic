//
//  PlayerHelper.h
//  PramaWellsMusic
//
//  Created by mac on 16/8/24.
//  Copyright © 2016年 mac. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AVFoundation/AVFoundation.h>

@interface PlayerHelper : NSObject
@property (nonatomic, strong) AVQueuePlayer *aPlayer;

+ (instancetype)sharePlayerHelper;
@end

