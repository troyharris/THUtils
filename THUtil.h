//
//  THUtil.h
//  Paperback Writer
//
//  Created by Troy HARRIS on 5/24/13.
//  Copyright (c) 2013 Lone Yeti. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface THUtil : NSObject

+ (CGFloat)realDeviceWidth;
+ (CGFloat)realDeviceHeight;
+ (UIInterfaceOrientation)orientation;
+ (CGFloat)viewBottomOrigin:(UIView *)view;
+ (CGPoint)viewRealCenter:(UIView *)view;
+ (UIColor *)randomColorFromArray:(NSArray *)colors;
+ (CGFloat)fontSizeFromIPadFontSize:(CGFloat)fontSize;
+ (CGFloat)fontSizeFromIPhoneFontSize:(CGFloat)fontSize;

@end
