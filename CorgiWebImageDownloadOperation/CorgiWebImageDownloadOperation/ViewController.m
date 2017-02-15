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
    
    [self.queue addOperation:op];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
