//
//  UITabBar+badge.h
//  CAP
//
//  Created by STREAMER on 2016/12/20.
//  Copyright © 2016年 Achilles_Chu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITabBar (badge)

- (void)showBadgeOnItemIndex:(int)index;   //显示小红点

- (void)hideBadgeOnItemIndex:(int)index; //隐藏小红点

@end
