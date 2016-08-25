//
//  HeaderView.h
//  PramaWellsMusic
//
//  Created by mac on 16/8/24.
//  Copyright © 2016年 mac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HeaderView : UITableViewHeaderFooterView

@property (nonatomic, copy) NSString *sectionTitle;

+ (id)headerView:(UITableView *)tableView;

@end
