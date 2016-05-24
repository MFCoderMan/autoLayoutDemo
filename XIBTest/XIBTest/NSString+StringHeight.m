//
//  NSString+StringHeight.m
//  XIBTest
//
//  Created by ZhangYunguang on 16/4/20.
//  Copyright © 2016年 ZhangYunguang. All rights reserved.
//

#import "NSString+StringHeight.h"

@implementation NSString (StringHeight)

+(CGFloat)heightWithString:(NSString *)string width:(CGFloat)width FontSize:(CGFloat)fontSize{
    if ([[[UIDevice currentDevice] systemVersion] doubleValue] >= 7.0) {
        NSDictionary *attrsDic = @{NSFontAttributeName:[UIFont systemFontOfSize:fontSize]};
        CGSize size = [string boundingRectWithSize:CGSizeMake(width, MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading | NSStringDrawingTruncatesLastVisibleLine attributes:attrsDic context:nil].size;
        return size.height;
    }else{
#pragma clang diagnostic push
#pragma clang diagnostic ignored"-Wdeprecated-declarations"
        CGSize textSize = [string sizeWithFont:[UIFont systemFontOfSize:fontSize] constrainedToSize:CGSizeMake(width, MAXFLOAT) lineBreakMode:NSLineBreakByCharWrapping];
#pragma clang diagnostic pop
        return textSize.height;//返回 计算出得行高
    }
}
-(CGFloat)heightWithWidth:(CGFloat)width fontSize:(CGFloat)fontSize{
    if ([[[UIDevice currentDevice] systemVersion] floatValue] >= 7.0) {
        NSDictionary *attrsDic = @{NSFontAttributeName:[UIFont systemFontOfSize:fontSize]};
        CGSize size = [self boundingRectWithSize:CGSizeMake(width, MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading | NSStringDrawingTruncatesLastVisibleLine attributes:attrsDic context:nil].size;
        return size.height;
    }else{
#pragma clang diagnostic push
#pragma clang diagnostic ignored"-Wdeprecated-declarations"
        CGSize textSize = [self sizeWithFont:[UIFont systemFontOfSize:fontSize] constrainedToSize:CGSizeMake(width, MAXFLOAT) lineBreakMode:NSLineBreakByCharWrapping];
#pragma clang diagnostic pop
        return textSize.height;//返回 计算出得行高
    }
}
@end
