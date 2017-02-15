//
//  UIColor+CorgiAddition.h
//  9.2-朋友圈
//
//  Created by Corgi on 16/12/23.
//  Copyright © 2016年 Corgi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (CorgiAddition)
+(instancetype)corgi_colorWithR:(int)red G:(int)green B:(int)blue;
+(instancetype)corgi_colorWithHex:(int32_t)hex;
+(instancetype)corgi_randomColor;
@end
