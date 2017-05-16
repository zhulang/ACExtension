//
//  UIImage+QRCode.h
//  CAP
//
//  Created by Achilles on 2016/12/21.
//  Copyright © 2016年 Achilles_Chu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (QRCode)
+ (UIImage *)makeQRCodeForString:(NSString *)string;
+ (UIImage *)createNonInterpolatedUIImageFormCIImage:(CIImage *)image withSize:(CGFloat) size;
@end
