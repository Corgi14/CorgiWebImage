//
//  DownloaderOperation.m
//  CorgiWebImageDownloadOperation
//
//  Created by Corgi on 17/2/15.
//  Copyright © 2017年 Corgi. All rights reserved.
//

#import "DownloaderOperation.h"
/*
 负责图片下载
 1.需要网络图片地址URL
 
 
 */
@implementation DownloaderOperation

//main只有在队列调度操作后才执行
//重写main:可以指定自定义的操作要执行的代码
- (void)main {

    NSLog(@"in %@",self.urlString);
    
    NSURL *url = [NSURL URLWithString:self.urlString];
    
    NSData *data = [NSData dataWithContentsOfURL:url];

    UIImage *image = [UIImage imageWithData:data];
    
//    NSLog(@"image %@",image);
    if (self.finishenBlock != nil) {
        
        [[NSOperationQueue mainQueue] addOperationWithBlock:^{
            self.finishenBlock(image);
            
        }];
    }
}

@end
