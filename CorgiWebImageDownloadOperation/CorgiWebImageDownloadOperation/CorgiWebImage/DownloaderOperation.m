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
 2.需要回调外界显示
 
 */
//接收外界传入图片的地址
@interface DownloaderOperation ()

@property (nonatomic,copy) NSString *urlString;

//接收外界Block
@property (nonatomic,copy) void (^finishenBlock)(UIImage *);

@end


@implementation DownloaderOperation
+ (instancetype)downloaderOperationWithUrlString:(NSString *)urlString finished:(void (^)(UIImage *image))finishedBlock {

    DownloaderOperation *op = [[DownloaderOperation alloc] init];

    op.urlString = urlString;
    
    op.finishenBlock  = finishedBlock;
    
    return op;

}
//main只有在队列调度操作后才执行
//重写main:可以指定自定义的操作要执行的代码
- (void)main {

    [NSThread sleepForTimeInterval:1.0];
    
    NSLog(@"in %@",self.urlString);
    
    NSURL *url = [NSURL URLWithString:self.urlString];
    
    NSData *data = [NSData dataWithContentsOfURL:url];

    UIImage *image = [UIImage imageWithData:data];
    
    //判断当前要取消的操作的cancel是否为yes
    if (self.cancelled == YES) {
        NSLog(@"cancel");
        return;
    }
    
    
//    NSLog(@"image %@",image);
    if (self.finishenBlock != nil) {
        
        [[NSOperationQueue mainQueue] addOperationWithBlock:^{
            NSLog(@"finish ");
            self.finishenBlock(image);
            
        }];
    }
}



@end
