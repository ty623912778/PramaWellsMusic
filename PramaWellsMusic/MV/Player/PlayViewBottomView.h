

#import <AVFoundation/AVFoundation.h>
#import <UIKit/UIKit.h>
#import "PlayerProgressView.h"
@class PlayViewBottomView;
@protocol PlayViewBottomViewDelegate <NSObject>

@optional
- (void)PlayViewBottomView:(PlayViewBottomView *)bottomView didClcikControlButton:(UIButton *)controlButton;
- (void)PlayViewBottomView:(PlayViewBottomView *)bottomView didClcikFullScreenButton:(UIButton *)FullScreenButton;
- (void)PlayViewBottomView:(PlayViewBottomView *)bottomView didUpdateProgressView:(PlayerProgressView *)progressView;
- (void)PlayViewBottomView:(PlayViewBottomView *)bottomView sliderPositionSliderUp:(PlayerProgressView *)progressView;
- (void)PlayViewBottomView:(PlayViewBottomView *)bottomView sliderPositionSliderDown:(PlayerProgressView *)progressView;

@end

@interface PlayViewBottomView : UIView
/**
 *  当前时间
 */
@property (nonatomic, weak) UILabel *currentTimeLabel;
/**
 *  总时间
 */
@property (nonatomic, weak) UILabel *totalTimeLabel;
/**
 *  控制button
 */
@property (nonatomic, weak) UIButton *controlButton;

/**
 *  全屏 button
 */
@property (nonatomic, weak) UIButton *fullScreenButton;
/**
 *  进度条
 */
@property (nonatomic, weak) PlayerProgressView *progressView;

@property (nonatomic, weak) id <PlayViewBottomViewDelegate> delegate;

- (void)updatePlayingTime:(CGFloat)readDuration;
- (void)updateTotalTime:(CGFloat)taotalDuration;
- (void)updateBufferringTime:(CMTime)bufferDuration;
@end
