//
//  NSDictionary+Null.m
//  CheCheng
//
//  Created by MYF on 16/3/18.
//

#import "NSDictionary+Null.h"

@implementation NSDictionary (Null)

- (NSString *) stringForKey:(id)key
{
    id obj = [self objectForKey:key];
    if (![obj isKindOfClass:[NSString class]]) {
        return @"";
    }
    return obj;
}

- (id) idForKey:(id)key
{
    id obj = [self objectForKey:key];
    if ([obj isKindOfClass:[NSNull class]]) {
        return nil;
    }
    return obj;
}

- (int) intForKey:(id)key
{
    id obj = [self objectForKey:key];
    if ([obj isKindOfClass:[NSNull class]]) {
        return 0;
    }
    return [obj intValue];
}

- (long long) longlongForKey:(id)key
{
    id obj = [self objectForKey:key];
    if ([obj isKindOfClass:[NSNull class]]) {
        return 0;
    }
    return [obj longLongValue];
}

- (NSNumber *) intNumberForKey:(id)key
{
    id obj = [self objectForKey:key];
    if ([obj isKindOfClass:[NSNull class]] || !obj) {
        return @(0);
    }
    return @([obj intValue]);
}

- (double ) doubleForKey:(id)key
{
    id obj = [self objectForKey:key];
    if ([obj isKindOfClass:[NSNull class]] || !obj) {
        return 0;
    }
    return [obj doubleValue];
}

@end
