//
//  NSString+Extension.m
//  CAP
//
//  Created by Achilles on 16/10/8.
//  Copyright © 2016年 Achilles_Chu. All rights reserved.
//

#import "NSString+Extension.h"
#import <CommonCrypto/CommonCryptor.h>
#import <CommonCrypto/CommonHMAC.h>
@implementation NSString (Extension)

+(NSString*)stringToMD5String:(NSString*)aString
{
    const char *cStr = [aString UTF8String];
    unsigned char result[CC_MD5_DIGEST_LENGTH];
    CC_MD5(cStr, (int)strlen(cStr), result);
    
    
    return [[NSString stringWithFormat:
             @"%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X",
             result[0], result[1], result[2], result[3],
             result[4], result[5], result[6], result[7],
             result[8], result[9], result[10], result[11],
             result[12], result[13], result[14], result[15]
             ] lowercaseString];
    
}

+ (NSString*)dictionaryToJson:(NSDictionary *)dic
{
    NSError *parseError = nil;
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:dic options:NSJSONWritingPrettyPrinted error:&parseError];
    return [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
    
}

+ (NSString *)arrToJson:(NSArray *)array
{
    NSError * parseError;
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:array options:NSJSONWritingPrettyPrinted error:&parseError];
    return [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
}

+ (NSInteger)lengthDidReplaceSpace:(NSString *)string
{
    NSString * str = [string stringByReplacingOccurrencesOfString:@" " withString:@""];
    
    return str.length;
}

//unicode编码
+ (NSString *)unicodeEncodeString:(NSString *)string
{
    NSString *uni = [NSString stringWithUTF8String:[string UTF8String]];
    NSData *uniData = [uni dataUsingEncoding:NSNonLossyASCIIStringEncoding];
    NSString *str = [[NSString alloc] initWithData:uniData encoding:NSUTF8StringEncoding];
    return str;
}

//解码
+ (NSString *)decodeUnicodeString:(NSString *)string
{
    const char *jsonStr = [string UTF8String];
    NSData *jsonData = [NSData dataWithBytes:jsonStr length:strlen(jsonStr)];
    NSString *str = [[NSString alloc] initWithData:jsonData encoding:NSNonLossyASCIIStringEncoding];
    return str;
}

@end
