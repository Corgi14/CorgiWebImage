//
//  NSArray+CorgiAddition.h
//  10.3-支付宝商家分类
//
//  Created by Corgi on 16/12/24.
//  Copyright © 2016年 Corgi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray (CorgiAddition)
+(instancetype)corgi_arrayWithPlist:(NSString *)plistName className:(NSString *)clzName;
@end
