




#import "FunnyViewController.h"
#import "AFNetworking.h"
#import "AFHTTPSessionManager.h"
#import "YYModel.h"
#import "Video.h"
#import "VideoCell.h"
#import "MVViewController.h"
#import "Player.h"

@interface FunnyViewController ()
@property (nonatomic, copy) NSString *tid;
@property (nonatomic, assign) NSInteger index;

@property (nonatomic, strong) NSMutableArray *videoArray;

@property (nonatomic, strong) Player *player;

@property (nonatomic, strong) VideoCell *selectCell;

@property (nonatomic, strong) NSIndexPath *selectIndexPath;
@end

@implementation FunnyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tid = @"T1457069041911";
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
    
    
    VideoCell *cell = (VideoCell *)[tableView cellForRowAtIndexPath:indexPath];
    if (self.selectCell == cell) {
        return;
    }
    
    if (_player) {
        [self.player close];
        self.player = nil;
        
    }
    
    Video *video = self.videoArray[indexPath.row];
    self.player.mediaPath = video.mp4_url;
    self.player.frame = cell.videoImageView.bounds;
    [cell addSubview:self.player];
    [cell bringSubviewToFront:self.player];
    
    self.player.firstSuperView = cell;
    self.player.title = video.title;
    self.selectCell = cell;
    self.selectIndexPath = indexPath;
    
}
- (void)scrollViewDidScroll:(UIScrollView *)scrollView{
    
    if (scrollView == self.tableView) {
        NSArray *indexArray = [self.tableView indexPathsForVisibleRows];
        if (![indexArray containsObject:self.selectIndexPath]) {
            
            if (_player) {
                [_player close];
                _player = nil;
            }
        }
    }
}
- (Player *)player{
    if (!_player) {
        _player = [[Player alloc] init];
    }
    return _player;
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
- (void)viewDidDisappear:(BOOL)animated{
    [super viewDidDisappear:animated];
    if (_player) {
        [_player close];
        _player = nil;
    }
}
@end
