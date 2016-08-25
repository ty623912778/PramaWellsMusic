//
//  PlayerView.h
//  0514
//
//  Created by mac on 16/8/19.
//  Copyright © 2016年 mac. All rights reserved.
//

#import <AVFoundation/AVFoundation.h>
#import <UIKit/UIKit.h>
#import "PlayerViewTopView.h"
#import "PlayViewBottomView.h"

typedef enum : NSInteger{
    PanDirectionNone,
    PanDirectionUp,
    PanDirectionDown,
    PanDirectionRight,
    PanDirectionLeft
} PanDirection;


@protocol PlayerViewDelegate <NSObject>
- (void)playerViewDidClickBackButton;
- (void)playViewDidDoubleTap;
- (void)playViewDidSwipeOver:(NSInteger)seconds;
- (void)playViewDidChangeVolume:(CGFloat)volume;
@end

@class Player;

@interface PlayerView : UIView
@property (nonatomic, strong) AVPlayer *player;

@property (nonatomic, readonly) AVPlayerLayer *playerLayer;

@property (nonatomic, strong) Player *playerContainer;

@property (nonatomic, copy) NSString *videoFillMode;

- (void)showIndicator;
- (void)hideIndicator;
@property (nonatomic, weak) PlayerViewTopView *topView;
@property (nonatomic, weak) PlayViewBottomView *bottomView;

@property (nonatomic, weak) id <PlayerViewDelegate> delegate;


@property (nonatomic, assign) UIDeviceOrientation orientation;

@property (nonatomic, assign) PanDirection  direction;

/**
 *  如果从左滑倒右,快进/快退的时间,默认90s,根据widthSeconds/width计算划过屏幕尺寸快进的时间
 */
@property (nonatomic, assign) CGFloat widthSeconds;
@end
