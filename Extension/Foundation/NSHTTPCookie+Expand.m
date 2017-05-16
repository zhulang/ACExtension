//
//  NSHTTPCookie+Expand.m
//  CAP
//
//  Created by Achilles on 2016/10/31.
//  Copyright © 2016年 Achilles_Chu. All rights reserved.
//

#import "NSHTTPCookie+Expand.h"

@implementation NSHTTPCookie (Expand)

+ (void)saveCk:(NSString *)url{
    NSArray *cookies = [[NSHTTPCookieStorage sharedHTTPCookieStorage] cookiesForURL: [NSURL URLWithString:url]];
    NSData *data = [NSKeyedArchiver archivedDataWithRootObject:cookies];
    [[NSUserDefaults standardUserDefaults] setObject:data forKey:@""];
}

+(NSArray *)getEikooc{
    NSData *cookiesdata = [[NSUserDefaults standardUserDefaults] objectForKey:@""];
    if([cookiesdata length]) {
        NSArray *cookies = [NSKeyedUnarchiver unarchiveObjectWithData:cookiesdata];
        NSHTTPCookie *cookie;
        for (cookie in cookies) {
            [[NSHTTPCookieStorage sharedHTTPCookieStorage] setCookie:cookie];
        }
        return cookies;
    }
    return nil;
}

@end
