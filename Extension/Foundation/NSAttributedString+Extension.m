//
//  NSAttributedString+Extension.m
//  CAP
//
//  Created by Achilles on 16/10/8.
//  Copyright © 2016年 Achilles_Chu. All rights reserved.
//

#import "NSAttributedString+Extension.h"

#import <CoreText/CoreText.h>
#import "UIColor+Extension.h"
@implementation NSAttributedString (Extension)
#pragma mark 黑
+ (NSAttributedString *)attributedTextWithText: (NSString *) text font:(UIFont *)font lineSpace:(CGFloat)lineSpace wordsSpace:(CGFloat)wordsSpace
{
    //初始化属性文字
    NSMutableAttributedString *attributedText = [[NSMutableAttributedString alloc] initWithString:text];
    //设置行间距
    NSMutableParagraphStyle * paragraphStyle1 = [[NSMutableParagraphStyle alloc] init];
    [paragraphStyle1 setLineSpacing:lineSpace];
    [attributedText addAttribute:NSParagraphStyleAttributeName value:paragraphStyle1 range:NSMakeRange(0, [attributedText length])];
    //设置字体大小
    [attributedText addAttribute:NSFontAttributeName value:font range:NSMakeRange(0, [attributedText length])];
    //设置字间距
    [attributedText addAttribute:(id)kCTKernAttributeName value:[NSNumber numberWithLong:wordsSpace] range:NSMakeRange(0,[attributedText length])];
    
    return attributedText;
}
#pragma mark 黄+黑
+ (NSAttributedString *)attributedTextWithOrangeCaption: (NSString *) caption andGrayValue: (NSString *) value font:(UIFont *)font lineSpace:(CGFloat)lineSpace wordsSpace:(CGFloat)wordsSpace
{
    NSMutableAttributedString *attributedText = [[NSMutableAttributedString alloc] initWithString: [NSString stringWithFormat:@"%@%@", caption, value]];
    
    if (caption.length) {
        NSRange rangeCaption = NSMakeRange(0, caption.length);
        NSDictionary * captionAttributes = @{NSForegroundColorAttributeName:[UIColor colorWithHexString:@"f39700"]};
        
        [attributedText setAttributes:captionAttributes range: rangeCaption];
    }
    //设置行间距
    NSMutableParagraphStyle * paragraphStyle1 = [[NSMutableParagraphStyle alloc] init];
    [paragraphStyle1 setLineSpacing:lineSpace];
    [attributedText addAttribute:NSParagraphStyleAttributeName value:paragraphStyle1 range:NSMakeRange(0, [attributedText length])];
    //设置字体大小
    [attributedText addAttribute:NSFontAttributeName value:font range:NSMakeRange(0, [attributedText length])];
    //设置字间距
    [attributedText addAttribute:(id)kCTKernAttributeName value:[NSNumber numberWithLong:wordsSpace] range:NSMakeRange(0,[attributedText length])];
    
    return attributedText;
}
#pragma mark 黑+黄
+ (NSAttributedString *)attributedTextWithBlackCaption: (NSString *) caption andOrangeValue: (NSString *) value font:(UIFont *)font lineSpace:(CGFloat)lineSpace wordsSpace:(CGFloat)wordsSpace
{
    NSMutableAttributedString *attributedText = [[NSMutableAttributedString alloc] initWithString: [NSString stringWithFormat:@"%@%@", caption, value]];
    
    if (value.length) {
        NSRange rangeCaption = NSMakeRange(caption.length, value.length);
        NSDictionary * captionAttributes = @{
                                             NSForegroundColorAttributeName:[UIColor colorWithHexString:@"f39700"],
                                             //                                                        NSFontAttributeName:sSignLabelFont
                                             };
        [attributedText setAttributes:captionAttributes range: rangeCaption];
    }
    
    //    NSDictionary * captionFontAttributes = @{NSFontAttributeName:sSignLabelFont};
    //    [attributedText setAttributes:captionFontAttributes range: NSMakeRange(0, caption.length)];
    
    //设置行间距
    NSMutableParagraphStyle * paragraphStyle1 = [[NSMutableParagraphStyle alloc] init];
    [paragraphStyle1 setLineSpacing:lineSpace];
    [attributedText addAttribute:NSParagraphStyleAttributeName value:paragraphStyle1 range:NSMakeRange(0, [attributedText length])];
    //设置字体大小
    [attributedText addAttribute:NSFontAttributeName value:font range:NSMakeRange(0, [attributedText length])];
    //设置字间距
    [attributedText addAttribute:(id)kCTKernAttributeName value:[NSNumber numberWithLong:wordsSpace] range:NSMakeRange(0,[attributedText length])];
    return attributedText;
}
#pragma mark 蓝+黑
+ (NSAttributedString *)attributedTextWithBlueCaption: (NSString *) caption andBlackValue: (NSString *) value font:(UIFont *)font lineSpace:(CGFloat)lineSpace wordsSpace:(CGFloat)wordsSpace
{
    //初始化属性文字
    NSMutableAttributedString *attributedText = [[NSMutableAttributedString alloc] initWithString: [NSString stringWithFormat:@"%@%@", caption, value]];
    //字体分色
    if (caption.length) {
        NSRange rangeCaption = NSMakeRange(0, caption.length);//
        NSDictionary * captionAttributes = @{NSForegroundColorAttributeName:[UIColor colorWithHexString:@"27c3dc"]};
        [attributedText setAttributes:captionAttributes range: rangeCaption];
        
        //设置黑色字体范围
        NSRange rangeCaption2 = NSMakeRange(caption.length, value.length);
        NSDictionary * captionAttributes2 = @{NSForegroundColorAttributeName:[UIColor colorWithHexString:@"999999"]};
        [attributedText setAttributes:captionAttributes2 range:rangeCaption2];
    }
    //设置行间距
    NSMutableParagraphStyle * paragraphStyle1 = [[NSMutableParagraphStyle alloc] init];
    [paragraphStyle1 setLineSpacing:lineSpace];
    paragraphStyle1.alignment = NSTextAlignmentCenter;
    [attributedText addAttribute:NSParagraphStyleAttributeName value:paragraphStyle1 range:NSMakeRange(0, [attributedText length])];
    //设置字体大小
    [attributedText addAttribute:NSFontAttributeName value:font range:NSMakeRange(0, [attributedText length])];
    //设置字间距
    [attributedText addAttribute:(id)kCTKernAttributeName value:[NSNumber numberWithLong:wordsSpace] range:NSMakeRange(0,[attributedText length])];
    
    return attributedText;
}

#pragma mark 红+黑
+ (NSAttributedString *)attributedTextWithRedCaption: (NSString *) caption andBlackValue: (NSString *) value font:(UIFont *)font lineSpace:(CGFloat)lineSpace wordsSpace:(CGFloat)wordsSpace
{
    //初始化属性文字
    NSMutableAttributedString *attributedText = [[NSMutableAttributedString alloc] initWithString: [NSString stringWithFormat:@"%@%@", caption, value]];
    //字体分色
    if (caption.length) {
        NSRange rangeCaption = NSMakeRange(0, caption.length);
        NSDictionary * captionAttributes = @{NSForegroundColorAttributeName:[UIColor colorWithHexString:@"dc2727"]};
        [attributedText setAttributes:captionAttributes range: rangeCaption];
        
        //设置黑色字体范围
        NSRange rangeCaption2 = NSMakeRange(caption.length, value.length);
        NSDictionary * captionAttributes2 = @{NSForegroundColorAttributeName:[UIColor colorWithHexString:@"666666"]};
        [attributedText setAttributes:captionAttributes2 range:rangeCaption2];
    }
    //设置行间距
    NSMutableParagraphStyle * paragraphStyle1 = [[NSMutableParagraphStyle alloc] init];
    [paragraphStyle1 setLineSpacing:lineSpace];
    //    paragraphStyle1.alignment = NSTextAlignmentCenter;
    [attributedText addAttribute:NSParagraphStyleAttributeName value:paragraphStyle1 range:NSMakeRange(0, [attributedText length])];
    //设置字体大小
    [attributedText addAttribute:NSFontAttributeName value:font range:NSMakeRange(0, [attributedText length])];
    //设置字间距
    [attributedText addAttribute:(id)kCTKernAttributeName value:[NSNumber numberWithLong:wordsSpace] range:NSMakeRange(0,[attributedText length])];
    
    return attributedText;
}
#pragma mark 黑+蓝
+ (NSAttributedString *)attributedTextWithBlueCaption: (NSString *) caption andBlueValue: (NSString *) value font:(UIFont *)font lineSpace:(CGFloat)lineSpace wordsSpace:(CGFloat)wordsSpace
{
    //初始化属性文字
    NSMutableAttributedString *attributedText = [[NSMutableAttributedString alloc] initWithString: [NSString stringWithFormat:@"%@%@", caption, value]];
    //字体分色
    if (caption.length) {
        NSRange rangeCaption = NSMakeRange(0, caption.length);
        NSDictionary * captionAttributes = @{NSForegroundColorAttributeName:[UIColor colorWithHexString:@"999999"]};
        [attributedText setAttributes:captionAttributes range: rangeCaption];
        
        //设置黑色字体范围
        NSRange rangeCaption2 = NSMakeRange(caption.length, value.length);
        NSDictionary * captionAttributes2 = @{NSForegroundColorAttributeName:[UIColor colorWithHexString:@"27c3dc"]};
        [attributedText setAttributes:captionAttributes2 range:rangeCaption2];
    }
    //设置行间距
    NSMutableParagraphStyle * paragraphStyle1 = [[NSMutableParagraphStyle alloc] init];
    [paragraphStyle1 setLineSpacing:lineSpace];
    paragraphStyle1.alignment = NSTextAlignmentCenter;
    [attributedText addAttribute:NSParagraphStyleAttributeName value:paragraphStyle1 range:NSMakeRange(0, [attributedText length])];
    //设置字体大小
    [attributedText addAttribute:NSFontAttributeName value:font range:NSMakeRange(0, [attributedText length])];
    //设置字间距
    [attributedText addAttribute:(id)kCTKernAttributeName value:[NSNumber numberWithLong:wordsSpace] range:NSMakeRange(0,[attributedText length])];
    
    return attributedText;
}
@end

