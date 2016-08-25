//
//  BarButtonItem.m
//  PramaWellsMusic
//
//  Created by mac on 16/8/25.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "BarButtonItem.h"

@implementation BarButtonItem


+ (instancetype)buttonWithTitle:(NSString *)buttonTitle{
    BarButtonItem *barButtonItem = [super buttonWithType:UIButtonTypeSystem];
    
    CGSize buttonSize = [buttonTitle sizeWithAttributes:@{NSFontAttributeName:[UIFont boldSystemFontOfSize:17.0f]}];
    if (buttonSize.width > 68) {
        buttonSize.width = 68;
    }
    
    barButtonItem.titleLabel.lineBreakMode = NSLineBreakByClipping;
    
    barButtonItem.frame = CGRectMake(0, 0, buttonSize.width, 33);
    
    [barButtonItem setTitle:buttonTitle forState:UIControlStateNormal];
    barButtonItem.tintColor = [UIColor whiteColor];
    barButtonItem.titleLabel.font = [UIFont boldSystemFontOfSize:17.0f];
    
    return barButtonItem;
}

+ (instancetype)buttonWithImageNormal:(UIImage *)imageNormal imageSelected:(UIImage *)imageSelected{
    BarButtonItem *barButtonItem = [super buttonWithType:UIButtonTypeCustom];
    
    barButtonItem.frame = CGRectMake(0, 0, 33, 33);
    [barButtonItem setImage:imageNormal forState:UIControlStateNormal];
    [barButtonItem setImage:imageSelected forState:UIControlStateHighlighted];
    
    return barButtonItem;
}




/*
 // Only override drawRect: if you perform custom drawing.
 // An empty implementation adversely affects performance during animation.
 - (void)drawRect:(CGRect)rect {
 // Drawing code
 }
 */

@end
