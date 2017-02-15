//
//  DownloaderOperation.h
//  CorgiWebImageDownloadOperation
//
//  Created by Corgi on 17/2/15.
//  Copyright © 2017年 Corgi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DownloaderOperation : NSOperation

//接收外界传入图片的地址
@property (nonatomic,copy) NSString *urlString;

@end
