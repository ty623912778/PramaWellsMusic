//
//  ForwardView.m
//  0514
//
//  Created by mac on 16/8/19.
//  Copyright © 2016年 mac. All rights reserved.
//



#import "Masonry.h"
#import "ForwardView.h"
#define VideoName(file) [@"PlayerTool.bundle" stringByAppendingPathComponent:file]

@interface ForwardView()
@property (nonatomic, weak) UIImageView *forwardImageView;
@property (nonatomic, weak) UIImageView *rewindImageView;

@end


@implementation ForwardView


- (instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        UILabel *timeLabel = [[UILabel alloc] init];
        timeLabel.textColor = [UIColor whiteColor];
        timeLabel.font = [UIFont systemFontOfSize:15];
        timeLabel.textAlignment = NSTextAlignmentCenter;
        //        time.backgroundColor = [UIColor redColor];
        self.timeLabel = timeLabel;
        timeLabel.text = @"99:99";
        [self addSubview:timeLabel];
        
        UIImageView *forwardImageView = [[UIImageView alloc] init];
        forwardImageView.contentMode = UIViewContentModeCenter;
        [self addSubview:forwardImageView];
        self.forwardImageView = forwardImageView;
        forwardImageView.image = [UIImage imageNamed:VideoName(@"kuaijin")];
        //        forwardImageView.backgroundColor = [UIColor blueColor];
        
        
        UIImageView *rewindImageView = [[UIImageView alloc] init];
        rewindImageView.contentMode = UIViewContentModeCenter;
        [self addSubview:rewindImageView];
        self.rewindImageView = rewindImageView;
        rewindImageView.image = [UIImage imageNamed:VideoName(@"kuaitui")];
        //        rewindImageView.backgroundColor = [UIColor blueColor];
    }
    return self;
}
- (void)layoutSubviews{
    [super layoutSubviews];
    [self.timeLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self);
        make.size.mas_equalTo(CGSizeMake(50, 40));
        make.centerX.equalTo(self);
        
    }];
    [self.forwardImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self);
        make.size.mas_equalTo(CGSizeMake(20, 40));
        make.left.equalTo(self.timeLabel.mas_right);
    }];
    [self.rewindImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self);
        make.size.mas_equalTo(CGSizeMake(20, 40));
        make.right.equalTo(self.timeLabel.mas_left);
    }];
}

- (void)setMode:(ForwardViewMode)mode{
    _mode = mode;
    switch (mode) {
        case ForwardViewModeRewind:
            self.forwardImageView.hidden = YES;
            self.rewindImageView.hidden = NO;
            break;
        case ForwardViewModeForward:
            self.rewindImageView.hidden = YES;
            self.forwardImageView.hidden = NO;
            break;
        default:
            break;
    }
}
@end

