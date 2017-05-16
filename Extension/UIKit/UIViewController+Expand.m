//
//  UIViewController+Expand.m
//  CAP
//
//  Created by Achilles on 2016/10/13.
//  Copyright © 2016年 Achilles_Chu. All rights reserved.
//

#import "UIViewController+Expand.h"
#import <objc/runtime.h>
#import "UINavigationBar+Extension.h"
static char kAssociatedQueryObjectKey;

@implementation UIViewController (Expand)

-(void)setParameters:(NSDictionary *)parameters
{
    objc_setAssociatedObject(self, &kAssociatedQueryObjectKey, parameters, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

-(NSDictionary *)parameters
{
    return objc_getAssociatedObject(self, &kAssociatedQueryObjectKey);
}

+(UIViewController *)viewControllerWithString:(NSString *)string
{
    return [[NSClassFromString(@"UIViewController") alloc] init];
}

-(void)reSetNaviBarWithBarColor:(UIColor *)barColor  andBackItemImage:(UIImage *)backImage andTintColor:(UIColor *)tintColor andTitleColor:(UIColor *)titleColor andTitleFont:(UIFont *)titleFont
{
    if(barColor)[self.navigationController.navigationBar lt_setBackgroundColor:barColor];
    if([barColor isEqual:[UIColor grayColor]])
        [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleDefault];
    else
        [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent];
    if(backImage)
    {
        backImage = [backImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        [self.navigationController.navigationBar lt_setBackgroundColor:barColor];
        self.navigationController.navigationBar.backIndicatorTransitionMaskImage = backImage;
        self.navigationController.navigationBar.backIndicatorImage = backImage;
    }
    self.navigationController.navigationBar.tintColor = tintColor;
    NSMutableDictionary * mDic = [NSMutableDictionary dictionaryWithObjectsAndKeys:titleColor,NSForegroundColorAttributeName,titleFont,NSFontAttributeName, nil];
    self.navigationController.navigationBar.titleTextAttributes = mDic;
}

@end
