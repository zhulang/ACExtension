//
//  NSAttributedString+Extension.h
//  CAP
//
//  Created by Achilles on 16/10/8.
//  Copyright © 2016年 Achilles_Chu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface NSAttributedString (Extension)
//black
+ (NSAttributedString *)attributedTextWithText: (NSString *) text font:(UIFont *)font lineSpace:(CGFloat)lineSpace wordsSpace:(CGFloat)wordsSpace;
//orange + black
+ (NSAttributedString *)attributedTextWithOrangeCaption: (NSString *) caption andGrayValue: (NSString *) value font:(UIFont *)font lineSpace:(CGFloat)lineSpace wordsSpace:(CGFloat)wordsSpace;
//black + ora
+ (NSAttributedString *)attributedTextWithBlackCaption: (NSString *) caption andOrangeValue: (NSString *) value font:(UIFont *)font lineSpace:(CGFloat)lineSpace wordsSpace:(CGFloat)wordsSpace;
//blue + black
+ (NSAttributedString *)attributedTextWithBlueCaption: (NSString *) caption andBlackValue: (NSString *) value font:(UIFont *)font lineSpace:(CGFloat)lineSpace wordsSpace:(CGFloat)wordsSpace;
// red + black
+ (NSAttributedString *)attributedTextWithRedCaption: (NSString *) caption andBlackValue: (NSString *) value font:(UIFont *)font lineSpace:(CGFloat)lineSpace wordsSpace:(CGFloat)wordsSpace;
//black + blue
+ (NSAttributedString *)attributedTextWithBlueCaption: (NSString *) caption andBlueValue: (NSString *) value font:(UIFont *)font lineSpace:(CGFloat)lineSpace wordsSpace:(CGFloat)wordsSpace;

@end
