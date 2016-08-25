//
//  NetworkHelper.m
//  PramaWellsMusic
//
//  Created by mac on 16/8/24.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "NetworkHelper.h"
#import "AFNetworking.h"
#import "MBProgressHUD.h"

@implementation NetworkHelper

+ (void)JsonDataWithUrl:(NSString *)url success:(void(^)(id data))success fail:(void(^)())fail view:(UIView *)view  parameters:(NSDictionary *)parameters{
    [[AFNetworkReachabilityManager sharedManager] startMonitoring];
    [[AFNetworkReachabilityManager sharedManager] setReachabilityStatusChangeBlock:^(AFNetworkReachabilityStatus status) {
        if (status <= 0) {
            MBProgressHUD *mb1 = [MBProgressHUD showHUDAddedTo:view animated:YES];
            mb1.mode = MBProgressHUDModeText;
            mb1.labelText = @"没有网络哦";
            [mb1 hide:YES afterDelay:1];
            
        } else {
            MBProgressHUD *mb = [MBProgressHUD showHUDAddedTo:view animated:YES];
            mb.mode = MBProgressHUDModeIndeterminate;
            mb.labelText = @"正在请求";
            AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
            [manager GET:url parameters:parameters success:^(AFHTTPRequestOperation *operation, id responseObject) {
                if (responseObject) {
                    [mb removeFromSuperview];
                    if (success) {
                        success(responseObject);
                    }
                }
            } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
                [mb removeFromSuperview];
                if (fail) {
                    fail();
                }
            }];
        }
    }];
    
    
}

@end
