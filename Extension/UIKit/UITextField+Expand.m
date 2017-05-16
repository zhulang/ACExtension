//
//  UITextField+Expand.m
//  CAP
//
//  Created by Achilles on 2016/11/24.
//  Copyright © 2016年 Achilles_Chu. All rights reserved.
//

#import "UITextField+Expand.h"

@implementation UITextField (Expand)
- (NSDictionary *)regexPassword:(NSString *)text
{
    NSRegularExpression *regex;
    NSTextCheckingResult *result;
    NSError * error = NULL;
    NSDictionary * defaultResult = @{@"msg":@"未经过验证"};
    regex = [NSRegularExpression regularExpressionWithPattern:@"^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]{6,20}$" options:NSRegularExpressionCaseInsensitive error:&error];
    if (regex)
        {
        result = [regex firstMatchInString:text options:0 range:NSMakeRange(0, [text length])];
        return result ? nil : @{@"msg":@"输入的密码不符合规则"};
        }
    return defaultResult;
}

@end
