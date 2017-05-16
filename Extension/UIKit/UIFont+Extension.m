//
//  UIFont+Extension.m
//  CAP
//
//  Created by Achilles on 16/10/8.
//  Copyright © 2016年 Achilles_Chu. All rights reserved.
//

#import "UIFont+Extension.h"
#import <objc/runtime.h>
@implementation UIFont (Extension)
+ (void)load{
    [super load];
    Method method1 = class_getClassMethod(self, @selector(systemFontOfSize:));
    Method method2 = class_getClassMethod(self, @selector(ac_systemFontOfSize:));
    method_exchangeImplementations(method1, method2);
}

+(UIFont *)ac_systemFontOfSize:(CGFloat)fontSize
{
    return [UIFont fontWithName:@"PingFangSC-Regular" size:fontSize];
}

+ (UIFont *)fontWithLevel:(FontLevel)level
{
    switch (level) {
        case F1:
            return [UIFont systemFontOfSize:12];
            break;
        case F2:
            return [UIFont systemFontOfSize:14];
            break;
        case F3:
            return [UIFont systemFontOfSize:16];
            break;
        case F4:
            return [UIFont systemFontOfSize:18];
            break;
            break;
        default:
            return [UIFont systemFontOfSize:16];
            break;
    }
}

@end
