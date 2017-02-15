//
//  UILabel+CorgiAddiction.m
//  9.2-朋友圈
//
//  Created by Corgi on 16/12/23.
//  Copyright © 2016年 Corgi. All rights reserved.
//

#import "UILabel+CorgiAddiction.h"

@implementation UILabel (CorgiAddiction)
+(instancetype)corgi_labelWithText:(NSString *)text andFontSize:(CGFloat)fontSize andTextColor:(UIColor *)textColor {
    
    UILabel *corgiLabel = [[UILabel alloc] init];
    
    corgiLabel.text = text;
    
    corgiLabel.font = [UIFont systemFontOfSize:fontSize];
    
    corgiLabel.textColor = textColor;
    
    return corgiLabel;
}
@end
