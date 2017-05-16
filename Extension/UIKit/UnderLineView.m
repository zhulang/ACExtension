//
//  UnderLineView.m
//  CAP
//
//  Created by Achilles on 2016/11/30.
//  Copyright © 2016年 Achilles_Chu. All rights reserved.
//

#import "UnderLineView.h"

@implementation UnderLineView

- (void)drawRect:(CGRect)rect {
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetLineCap(context, kCGLineCapRound);
    CGContextSetLineWidth(context, 3);  //线宽
    CGContextSetAllowsAntialiasing(context, true);
    CGContextSetRGBStrokeColor(context, 70.0 / 255.0, 241.0 / 255.0, 241.0 / 255.0, 1.0);  //线的颜色
    CGContextBeginPath(context);
    
    CGContextMoveToPoint(context, 0, 0);  //起点坐标
    CGContextAddLineToPoint(context, self.frame.size.width, self.frame.size.height);   //终点坐标
    
    CGContextStrokePath(context);
}
@end
