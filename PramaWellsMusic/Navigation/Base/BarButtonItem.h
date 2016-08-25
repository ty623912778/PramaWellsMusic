//
//  BarButtonItem.h
//  PramaWellsMusic
//
//  Created by mac on 16/8/25.
//  Copyright © 2016年 mac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BarButtonItem : UIButton
+ (instancetype)buttonWithTitle:(NSString *)buttonTitle;


+ (instancetype)buttonWithImageNormal:(UIImage *)imageNormal imageSelected:(UIImage *)imageSelected;


@end
