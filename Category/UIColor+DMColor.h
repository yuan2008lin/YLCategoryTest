//
//  UIColor+DMColor.h
//  DMToolKit
//
//  Created by Apple on 15/5/6.
//  Copyright (c) 2015年 Mingle. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (DMColor)

/**
 *  根据通用的最大255的标准来获取RGB颜色
 *
 *  @param red   红色
 *  @param green 绿色
 *  @param blue  蓝色
 *  @param alpah 透明度
 *
 *  @return 颜色
 */
+ (UIColor *)colorWithR:(NSUInteger)red g:(NSUInteger)green b:(NSUInteger)blue alpha:(CGFloat)alpah;

/**
 *  根据16进制的色彩值来获得颜色
 *
 *  @param hex   16进制的色彩 e.g #FFFFFF
 *  @param alpha 透明度
 *
 *  @return 颜色
 */
+ (UIColor *)colorWithHex:(NSString *)hex alpha:(CGFloat)alpha;

@end
