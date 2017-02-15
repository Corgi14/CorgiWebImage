//
//  ViewController.m
//  CorgiWebImageDownloadOperation
//
//  Created by Corgi on 17/2/15.
//  Copyright © 2017年 Corgi. All rights reserved.
//

#import "ViewController.h"
#import "DownloaderOperation.h"
@interface ViewController ()
@property (nonatomic,strong) NSOperationQueue *queue;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];


    self.queue = [[NSOperationQueue alloc] init];
    
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


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
