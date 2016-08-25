//
//  MusicViewController.m
//  Player
//
//  Created by TianGeng on 16/6/22.
//  Copyright © 2016年 bykernel. All rights reserved.
//

#import "MusicViewController.h"
#import "YYModel.h"
#import "AFNetworking.h"
#import "Video.h"
#import "VideoCell.h"
#import "MVViewController.h"

@interface MusicViewController ()
@property (nonatomic, copy) NSString *tid;
@property (nonatomic, assign) NSInteger index;
@property (nonatomic, strong) NSMutableArray *videoArray;
@end

@implementation MusicViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
http://c.m.163.com/nc/video/Tlist/T1464751736259/0-10.html
    
    
    self.tid = @"T1464751736259";
    self.index = 0;
    
    self.videoArray = [NSMutableArray array];
    // 请求地址
    NSString *urlString = [NSString stringWithFormat:@"http://c.m.163.com/nc/video/Tlist/%@/%zd-10.html",self.tid,self.index];
    
    [self getWithUrl:urlString params:nil success:^(NSDictionary *responseObject) {
        NSArray *array = responseObject[self.tid];
        for (NSDictionary *dict in array) {
            Video *video = [Video yy_modelWithDictionary:dict];
            [self.videoArray addObject:video];
        }
        [self.tableView reloadData];
        
        NSLog(@"%@",responseObject);
    } failure:^(NSError *error) {
        NSLog(@"%@",error);
    }];
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    
    self.tableView.rowHeight = 205;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)getWithUrl:(NSString *)url params:(NSDictionary *)params success:(void(^)(id responseObject))success failure:(void (^)(NSError *error))failure{
    
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    //发送get请求
    [manager GET:url parameters:params success:^(AFHTTPRequestOperation *operation, id responseObject) {
        //加载成功,把数据回调回去
        if (success) {
            success(responseObject);
        }
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        if (failure) {
            failure(error);
        }
    }];
}

#pragma mark - Table view data source
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return self.videoArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    VideoCell *cell = [VideoCell videoCellWithTableView:tableView];
    Video *video = self.videoArray[indexPath.row];
    
    cell.video = video;
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    Video *video = self.videoArray[indexPath.row];
    
    MVViewController *vc = [[MVViewController alloc] init];
    vc.video = video;
    
    [self.navigationController pushViewController:vc animated:YES];
    //    VideoCell *cell = (VideoCell *)[tableView cellForRowAtIndexPath:indexPath];
    //    self.player.mediaPath = video.mp4_url;
    //    self.player.frame = cell.videoImageView.bounds;
    //    [cell addSubview:self.player];
    //    self.selectCell = cell;
    //    self.selectIndexPath = indexPath;
    
}

@end
