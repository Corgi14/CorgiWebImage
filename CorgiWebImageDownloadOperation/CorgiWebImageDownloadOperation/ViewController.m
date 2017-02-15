//
//  ViewController.m
//  CorgiWebImageDownloadOperation
//
//  Created by Corgi on 17/2/15.
//  Copyright © 2017年 Corgi. All rights reserved.
//

#import "ViewController.h"
#import "DownloaderOperation.h"
#import "YYModel.h"
#import "APPModel.h"
#import "AFNetworking.h"
@interface ViewController ()
@property (nonatomic,strong) NSOperationQueue *queue;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (nonatomic,strong) NSArray *dataList;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];


    self.queue = [[NSOperationQueue alloc] init];
    
    [self loadData];
}


- (void)loadData {
    
    NSString *jsonURL = @"https://raw.githubusercontent.com/Corgi14/JSON/master/apps.json";
    
    [[AFHTTPSessionManager manager] GET:jsonURL parameters:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        
        self.dataList = [NSArray yy_modelArrayWithClass:[APPModel class] json:responseObject];
        
        
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        
        NSLog(@"%@",error);
        
    }];
    
    
}

/*
- (void)test {
    DownloaderOperation *op = [[DownloaderOperation alloc] init];
    
    //传入图片地址
    op.urlString = @"http://ww2.sinaimg.cn/mw690/95c8d82ajw1f8wp8e1lo0j20u04g0qqr.jpg";
    
    //准备Block
    void (^finishedBlock)(UIImage *) = ^(UIImage *image){
        
        NSLog(@"%@ %@",image,[NSThread currentThread]);
        
    };
    op.finishenBlock = finishedBlock;
    
    [self.queue addOperation:op];
}
*/

//点击屏幕随机下载网络图片
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {

    //生成随机数
    int random = arc4random_uniform((uint32_t)self.dataList.count);
    
    //通过随机数,随机获取图片地址
    APPModel *model = self.dataList[random];
    //随机获取的图片地址传入到downloadOperation
    DownloaderOperation *op = [DownloaderOperation downloaderOperationWithUrlString:model.icon finished:^(UIImage *image) {
        self.imageView.image = image;
    }];
    
    [self.queue addOperation:op];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
