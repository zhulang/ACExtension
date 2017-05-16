//
//  UIColor+Extension.h
//  CAP
//
//  Created by Achilles on 16/10/8.
//  Copyright © 2016年 Achilles_Chu. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef enum : NSUInteger {
    C0,
    C1,//
    C2,//
    C3,//
    C4,//
    C5,//
} ColorType;
@interface UIColor (Extension)

+ (UIColor *)colorWithHexString:(NSString *)hexStr;
+ (UIColor *)colorWithHexString:(NSString *)hexStr alpha:(float)alpha;
+ (UIColor *)colorWithType:(ColorType)type;
@end
