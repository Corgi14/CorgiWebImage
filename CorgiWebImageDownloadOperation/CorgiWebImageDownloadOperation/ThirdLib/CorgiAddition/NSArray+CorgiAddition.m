//
//  NSArray+CorgiAddition.m
//  10.3-支付宝商家分类
//
//  Created by Corgi on 16/12/24.
//  Copyright © 2016年 Corgi. All rights reserved.
//

#import "NSArray+CorgiAddition.h"

@implementation NSArray (CorgiAddition)
+(instancetype)corgi_arrayWithPlist:(NSString *)plistName className:(NSString *)clzName{

    NSURL *fileURL = [[NSBundle mainBundle] URLForResource:plistName withExtension:nil];
    
    NSArray *array = [NSArray arrayWithContentsOfURL:fileURL];
    
    NSMutableArray *mutable = [NSMutableArray array];
    
    //根据字符串生成一个class
    Class clz = NSClassFromString(clzName);
    
    NSAssert(clz != nil, @"类名不正确");
    
    for (NSDictionary *dict in array) {
        NSObject *model = [[clz alloc] init];
        
        [model setValuesForKeysWithDictionary:dict];
        
        [mutable addObject:model];
    }
    return mutable.copy;
}
@end
