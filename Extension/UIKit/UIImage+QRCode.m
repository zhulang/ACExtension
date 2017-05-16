//
//  UIImage+QRCode.m
//  CAP
//
//  Created by Achilles on 2016/12/21.
//  Copyright © 2016年 Achilles_Chu. All rights reserved.
//

#import "UIImage+QRCode.h"

@implementation UIImage (QRCode)
+ (UIImage *)makeQRCodeForString:(NSString *)string{
    NSString *text = string;
    NSData *stringData = [text dataUsingEncoding: NSUTF8StringEncoding];
    //生成
    CIFilter *qrFilter = [CIFilter filterWithName:@"CIQRCodeGenerator"];
    [qrFilter setValue:stringData forKey:@"inputMessage"];
    [qrFilter setValue:@"M" forKey:@"inputCorrectionLevel"];
    //二维码颜色
    UIColor *onColor = [UIColor blackColor];
    UIColor *offColor = [UIColor whiteColor];
    //上色，如果只要白底黑块的QRCode可以跳过这一步
    CIFilter *colorFilter = [CIFilter filterWithName:@"CIFalseColor"
                                       keysAndValues:
                             @"inputImage",qrFilter.outputImage,
                             @"inputColor0",[CIColor colorWithCGColor:onColor.CGColor],
                             @"inputColor1",[CIColor colorWithCGColor:offColor.CGColor],
                             nil];
    //绘制
    CIImage *qrImage = colorFilter.outputImage;
    //===============第一种方法
    //    CGSize size = CGSizeMake(300, 300);
    //    CGImageRef cgImage = [[CIContext contextWithOptions:nil] createCGImage:qrImage     fromRect:qrImage.extent];
    //    UIGraphicsBeginImageContext(size);
    //    CGContextRef context = UIGraphicsGetCurrentContext();
    //    CGContextSetInterpolationQuality(context, kCGInterpolationNone);
    //    CGContextScaleCTM(context, 1.0, -1.0);//生成的QRCode就是上下颠倒的,需要翻转一下
    //    CGContextDrawImage(context, CGContextGetClipBoundingBox(context), cgImage);
    //    //    UIImage *codeImage = UIGraphicsGetImageFromCurrentImageContext();
    //    UIGraphicsEndImageContext();
    //    CGImageRelease(cgImage);
    //    return [UIImage imageWithCIImage:qrImage];
    
    return [self createNonInterpolatedUIImageFormCIImage:qrImage withSize:300];
}

+ (UIImage *)createNonInterpolatedUIImageFormCIImage:(CIImage *)image withSize:(CGFloat) size {
    CGRect extent = CGRectIntegral(image.extent);
    //比例
    CGFloat scale = MIN(size/CGRectGetWidth(extent), size/CGRectGetHeight(extent));
    
    //位图
    size_t width = CGRectGetWidth(extent) * scale;
    size_t height = CGRectGetHeight(extent) * scale;
    
    CGColorSpaceRef cs = CGColorSpaceCreateDeviceGray();
    CGContextRef bitmapRef = CGBitmapContextCreate(nil, width, height, 8, 0, cs, (CGBitmapInfo)kCGImageAlphaNone);
    CIContext *context = [CIContext contextWithOptions:nil];
    CGImageRef bitmapImage = [context createCGImage:image fromRect:extent];
    
    CGContextSetInterpolationQuality(bitmapRef, kCGInterpolationNone);
    CGContextScaleCTM(bitmapRef, scale, scale);
    
    CGContextDrawImage(bitmapRef, extent, bitmapImage);
    CGImageRef scaledImage = CGBitmapContextCreateImage(bitmapRef);
    
    CGContextRelease(bitmapRef);
    CGImageRelease(bitmapImage);
    
    return [UIImage imageWithCGImage:scaledImage];
}
@end
