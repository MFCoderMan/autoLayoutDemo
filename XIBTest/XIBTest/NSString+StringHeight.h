//
//  NSString+StringHeight.h
//  XIBTest
//
//  Created by ZhangYunguang on 16/4/20.
//  Copyright © 2016年 ZhangYunguang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NSString (StringHeight)

+(CGFloat)heightWithString:(NSString *)string width:(CGFloat)width FontSize:(CGFloat)fontSize;
-(CGFloat)heightWithWidth:(CGFloat)width fontSize:(CGFloat)fontSize;
@end
