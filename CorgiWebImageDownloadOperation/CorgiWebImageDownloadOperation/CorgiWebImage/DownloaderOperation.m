//
//  DownloaderOperation.m
//  CorgiWebImageDownloadOperation
//
//  Created by Corgi on 17/2/15.
//  Copyright © 2017年 Corgi. All rights reserved.
//

#import "DownloaderOperation.h"

@implementation DownloaderOperation

//main只有在队列调度操作后才执行
//重写main:可以指定自定义的操作要执行的代码
- (void)main {

    NSLog(@"main %@",[NSThread currentThread]);
    
    NSData *data = [NSData dataWithContentsOfURL:nil];

}

@end
