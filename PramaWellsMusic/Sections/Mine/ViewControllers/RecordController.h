//
//  RecordController.h
//  PramaWellsMusic
//
//  Created by mac on 16/8/24.
//  Copyright © 2016年 mac. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NavigationView.h"
@interface RecordController : NavigationView
@property (nonatomic, strong) UINavigationController *navigation;
@property (nonatomic, copy) NSString *from;


//color


@property (nonatomic, copy) NSArray *arrayLeftButtons;

@property (nonatomic, copy) NSArray *arrayRightButtons;
@end