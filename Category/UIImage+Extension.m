//
//  UIImage+Extension.m
//  YSQ
//
//  Created by yuanlin on 15/10/15.
//  Copyright © 2015年 云凯科技. All rights reserved.
//

#import "UIImage+Extension.h"

@implementation UIImage (Extension)

//将颜色转换成图片
+ (UIImage *)imageWithColor:(UIColor *)color size:(CGSize)size{
    
    CGRect rect = CGRectMake(0, 0, size.width, size.height);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

+(UIImage *)imageWithString:(NSString *)string{

    NSData *data = [[NSData alloc]initWithBase64EncodedString:string options:NSDataBase64DecodingIgnoreUnknownCharacters];
    UIImage *image = [UIImage imageWithData:data];
    return image;
}
@end
