//
//  UIImage+Extension.h
//  YSQ
//
//  Created by yuanlin on 15/10/15.
//  Copyright © 2015年 云凯科技. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (Extension)

//将颜色转换成图片
+ (UIImage *)imageWithColor:(UIColor *)color size:(CGSize)size;
//二进制字符串转成图片
+(UIImage *)imageWithString:(NSString *)string;
@end
