//
//  DownloaderOperation.h
//  CorgiWebImageDownloadOperation
//
//  Created by Corgi on 17/2/15.
//  Copyright © 2017年 Corgi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DownloaderOperation : NSOperation




/**
 实例化自定义操作的类方法

 @param urlString 图片地址
 @param finishedBlock 下载完成的回调
 @return 实例
 */
+ (instancetype)downloaderOperationWithUrlString:(NSString *)urlString finished:(void (^)(UIImage *image))finishedBlock;

@end
