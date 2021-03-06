//
//  THUtil.m
//  Paperback Writer
//
//  Created by Troy HARRIS on 5/24/13.
//  Copyright (c) 2013 Lone Yeti. All rights reserved.
//

#import "THUtil.h"

@implementation THUtil


//Functions always return width and height according to device orientation
+ (CGFloat)realDeviceWidth {
    CGFloat deviceWidth;
     UIInterfaceOrientation orientation = [UIApplication sharedApplication].statusBarOrientation;
    if(UIInterfaceOrientationIsLandscape(orientation)) {
        deviceWidth = [UIScreen mainScreen].bounds.size.height;
    } else {
        deviceWidth = [UIScreen mainScreen].bounds.size.width;
    }
    return deviceWidth;
}

+ (CGFloat)realDeviceHeight {
    CGFloat deviceHeight;
    UIInterfaceOrientation orientation = [UIApplication sharedApplication].statusBarOrientation;
    if(UIInterfaceOrientationIsLandscape(orientation)) {
        deviceHeight = [UIScreen mainScreen].bounds.size.width;
    } else {
        deviceHeight = [UIScreen mainScreen].bounds.size.height;
    }
    return deviceHeight;
}

//Shorthand method to get the current interface orientation
+ (UIInterfaceOrientation)orientation {
    return [UIApplication sharedApplication].statusBarOrientation;
}

//Get the bottom point of a view
+ (CGFloat)viewBottomOrigin:(UIView *)view {
    return view.frame.origin.y + view.frame.size.height;
}

//Get the center point of the view regardless of orientation
+ (CGPoint)viewRealCenter:(UIView *)view {
    UIInterfaceOrientation orientation = [UIApplication sharedApplication].statusBarOrientation;
    return UIInterfaceOrientationIsLandscape(orientation) ? CGPointMake(view.center.y, view.center.x) : view.center;
}

//Send this method an array of colors and it will return a random one.
+ (UIColor *)randomColorFromArray:(NSArray *)colors {
    int amount = [colors count];
    int rand = arc4random() % amount;
    return (UIColor *)[colors objectAtIndex:rand];
}

//Attempts to bridge the gap between font sizes for iPad and iPhone. 2.591 seems to be the magic ratio
+ (CGFloat)fontSizeFromIPadFontSize:(CGFloat)fontSize {
    if (UI_USER_INTERFACE_IDIOM() != UIUserInterfaceIdiomPad) {
        fontSize = fontSize / 2.591;
    }
    return fontSize;
}

+ (CGFloat)fontSizeFromIPhoneFontSize:(CGFloat)fontSize {
    if (UI_USER_INTERFACE_IDIOM() != UIUserInterfaceIdiomPad) {
        fontSize = fontSize * 2.591;
    }
    return fontSize;
}

@end
