//
//  ForwardView.h
//  0514
//
//  Created by mac on 16/8/19.
//  Copyright © 2016年 mac. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum {
    ForwardViewModeForward,
    ForwardViewModeRewind
}ForwardViewMode;

@interface ForwardView : UIView

@property (nonatomic, weak) UILabel *timeLabel;

@property (nonatomic, assign) ForwardViewMode mode;
@end
