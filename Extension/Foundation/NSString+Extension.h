//
//  NSString+Extension.h
//  CAP
//
//  Created by Achilles on 16/10/8.
//  Copyright © 2016年 Achilles_Chu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Extension)
+ (NSString*)stringToMD5String:(NSString*)aString;
+ (NSString*)dictionaryToJson:(NSDictionary *)dic;
+ (NSString *)arrToJson:(NSArray *)array;

+ (NSInteger)lengthDidReplaceSpace:(NSString *)string;
//unicode编码
+ (NSString *)unicodeEncodeString:(NSString *)string;
//解码
+ (NSString *)decodeUnicodeString:(NSString *)string;
@end
