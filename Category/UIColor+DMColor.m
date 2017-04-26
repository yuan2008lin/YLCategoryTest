//
//  UIColor+DMColor.m
//  DMToolKit
//
//  Created by Apple on 15/5/6.
//  Copyright (c) 2015年 Mingle. All rights reserved.
//

#import "UIColor+DMColor.h"

@implementation UIColor (DMColor)

+ (UIColor *)colorWithR:(NSUInteger)red g:(NSUInteger)green b:(NSUInteger)blue alpha:(CGFloat)alpah {
    return [UIColor colorWithRed:red / 255.0 green:green / 255.0 blue:blue / 255.0 alpha:alpah];
}

+ (UIColor *)colorWithHex:(NSString *)hex alpha:(CGFloat)alpha {
//    NSAssert(7 == hex.length, @"Hex color format error!");
    
    unsigned color = 0;
    NSScanner *hexValueScanner = [NSScanner scannerWithString:[hex substringFromIndex:1]];
    [hexValueScanner scanHexInt:&color];
    
    int blue = color & 0xFF;
    int green = (color >> 8) & 0xFF;
    int red = (color >> 16) & 0xFF;
    
    return [UIColor colorWithRed:red/255.0 green:green/255.0 blue:blue/255.0 alpha:alpha];
}
@end
