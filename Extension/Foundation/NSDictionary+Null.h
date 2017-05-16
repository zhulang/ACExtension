//
//  NSDictionary+Null.h
//  CheCheng
//
//  Created by MYF on 16/3/18.
//

#import <Foundation/Foundation.h>

@interface NSDictionary (Null)

- (id) idForKey:(id)key;

- (NSString *) stringForKey:(id)key;

- (int) intForKey:(id)key;

- (long long) longlongForKey:(id)key;

- (NSNumber *) intNumberForKey:(id)key;

- (double ) doubleForKey:(id)key;
@end
