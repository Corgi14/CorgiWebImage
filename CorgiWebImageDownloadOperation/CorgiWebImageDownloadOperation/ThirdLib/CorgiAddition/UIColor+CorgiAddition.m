//
//  UIColor+CorgiAddition.m
//  9.2-朋友圈
//
//  Created by Corgi on 16/12/23.
//  Copyright © 2016年 Corgi. All rights reserved.
//

#import "UIColor+CorgiAddition.h"

@implementation UIColor (CorgiAddition)
//10进制RGB
+(instancetype)corgi_colorWithR:(int)red G:(int)green B:(int)blue{
    
    return [UIColor colorWithRed:red/255.0 green:green/255.0 blue:blue/255.0 alpha:1];

}
//16进制RGB
+(instancetype)corgi_colorWithHex:(int32_t)hex{
    int red = (hex & 0xff0000) >> 16;
    int green = (hex & 0x00ff00) >> 8 ;
    int blue = (hex & 0x0000ff);
    
    UIColor *color = [UIColor corgi_colorWithR:red G:green B:blue];
    
    return color;

}
//随机颜色
+(instancetype)corgi_randomColor{
    
    return [UIColor corgi_colorWithR:arc4random_uniform(256) G:arc4random_uniform(256) B:arc4random_uniform(256)];

}
@end
