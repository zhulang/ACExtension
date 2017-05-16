//
//  UIColor+Extension.m
//  CAP
//
//  Created by Achilles on 16/10/8.
//  Copyright © 2016年 Achilles_Chu. All rights reserved.
//

#import "UIColor+Extension.h"

@implementation UIColor (Extension)

+ (UIColor *)colorWithHexString:(NSString *)hexStr
{
    return [UIColor colorWithHexString:hexStr alpha:1.0];
}

+ (UIColor *)colorWithType:(ColorType)type
{
    switch (type) {
        case C1:
            return [UIColor colorWithHexString:@"dbdbdb"];
            break;
        case C2:
            return [UIColor colorWithHexString:@"999999"];
            break;
        case C3:
            return [UIColor colorWithHexString:@"3e3e3e"];
            break;
        case C4:
            return [UIColor colorWithHexString:@"f39700"];
            break;
        case C5:
            return [UIColor colorWithHexString:@"182d7b"];
            break;
        default:
            return [UIColor colorWithHexString:@"262626"];
            break;
    }
}

+ (UIColor *)colorWithHexString:(NSString *)hexStr alpha:(float)alpha
{
    if (hexStr == nil || (id)hexStr == [NSNull null]) {
        return nil;
    }
    UIColor *clr;
    if (![hexStr hasPrefix:@"#"]) {
        hexStr = [NSString stringWithFormat:@"#%@", hexStr];
    }
    hexStr = [hexStr stringByReplacingOccurrencesOfString:@"#"
                                                     withString:@"0x"];
    uint hexValue;
    if ([[NSScanner scannerWithString:hexStr] scanHexInt:&hexValue]) {
        clr = [UIColor
               colorWithRed:((float)((hexValue & 0xFF0000) >> 16))/255.0
               green:((float)((hexValue & 0xFF00) >> 8))/255.0
               blue:((float)(hexValue & 0xFF))/255.0
               alpha:alpha];;
    } else {
        clr = [UIColor clearColor];
    }
    return clr;
}

@end
