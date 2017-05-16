//
//  UIFont+Extension.h
//  CAP
//
//  Created by Achilles on 16/10/8.
//  Copyright © 2016年 Achilles_Chu. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef enum : NSUInteger {
    F0,
    F1,
    F2,
    F3,
    F4
} FontLevel;

@interface UIFont (Extension)

+ (UIFont *)fontWithLevel:(FontLevel)level;
@end
