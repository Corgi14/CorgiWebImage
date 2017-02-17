//
//  DownloadOperationManager.h
//  CorgiWebImageDownloadOperation
//
//  Created by Corgi on 17/2/15.
//  Copyright © 2017年 Corgi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DownloadOperationManager : NSObject
//单例全局访问点
+ (instancetype)sharedManager;

- (void)downloadImageWithUrlString:(NSString *)urlString finished:(void (^)(UIImage *image))finishedBlock;

@end
