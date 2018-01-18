//
//  UIDevice+PhoneModel.m
//  ImagePickerViewController
//
//  Created by 魏琦 on 16/8/9.
//  Copyright © 2016年 com.drcacom.com. All rights reserved.
//

#import "UIDevice+PhoneModel.h"
#import <sys/utsname.h>

@implementation UIDevice (PhoneModel)

+ (uint) detectDevice {
    NSString *model = [[UIDevice currentDevice] model];
    
    // Some iPod Touch return "iPod Touch", others just "iPod"
    NSString *iPodTouch          = @"iPod Touch";
    NSString *iPodTouchLowerCase = @"iPod touch";
    NSString *iPodTouchShort     = @"iPod";
    NSString *iPad               = @"iPad";
    NSString *iPhoneSimulator    = @"iPhone Simulator";
    
    uint detected;
    
    if ([model compare:iPhoneSimulator]  == NSOrderedSame) {   // iPhone simulator
        detected = MODEL_IPHONE_SIMULATOR;
    } else if ([model compare:iPad]      == NSOrderedSame) {   // iPad
        detected = MODEL_IPAD;
    } else if ([model compare:iPodTouch] == NSOrderedSame) {  // iPod Touch
        detected = MODEL_IPOD_TOUCH;
    } else if ([model compare:iPodTouchLowerCase] == NSOrderedSame) {  // iPod Touch
        detected = MODEL_IPOD_TOUCH;
    } else if ([model compare:iPodTouchShort] == NSOrderedSame) {      // iPod Touch
        detected = MODEL_IPOD_TOUCH;
    } else {  // Could be an iPhone V1 or iPhone 3G (model should be "iPhone")
        struct utsname u;
        
        // u.machine could be "i386" for the simulator, "iPod1,1" on iPod Touch, "iPhone1,1" on iPhone V1 & "iPhone1,2" on iPhone3G
        
        uname(&u);
        if (!strcmp(u.machine, "iPhone1,1")) {
            detected = MODEL_IPHONE;
        } else { detected = MODEL_IPHONE_3G; }
    }
    return detected;
}

+ (NSString *) DeviceName:(BOOL)ignoreSimulator {
    NSString *returnValue = @"Unknown";
    
    switch ([self detectDevice]) {
        case MODEL_IPHONE_SIMULATOR:
            if (ignoreSimulator) {
                returnValue = @"iPhone 3G";
            } else {
                returnValue = @"iPhone Simulator";
            }
            break;
        case MODEL_IPOD_TOUCH:
            returnValue = @"iPod Touch";
            break;
        case MODEL_IPHONE:
            returnValue = @"iPhone";
            break;
        case MODEL_IPHONE_3G:
            returnValue = @"iPhone 3G";
            break;
        default:
            break;
    }
    
    return returnValue;
}

+ (PhoneModel)iPoneModel {
    if([UIScreen instancesRespondToSelector:@selector(currentMode)] && CGSizeEqualToSize(CGSizeMake(1125, 2436), [[UIScreen mainScreen] currentMode].size)) {
        return iPoneX;
    }
    
    CGRect bounds  = [UIScreen mainScreen].bounds;
    CGFloat width  = bounds.size.width;
    CGFloat height = bounds.size.height;
    
    UIInterfaceOrientation orientation = [[UIApplication sharedApplication] statusBarOrientation];
    if (UIInterfaceOrientationUnknown == orientation) { return  Unknown; }
    
    if (UIInterfaceOrientationPortrait == orientation) {
        if (width == 320) {
            if (height == 480) return iPone4;
            else return iPone5;
        }
        
        if (width == 376) { return iPone6; }
        if (width == 414) { return iPone6Plus; }
    } else if (UIInterfaceOrientationLandscapeLeft == orientation || UIInterfaceOrientationLandscapeRight == orientation) {//landscape
         if (height == 320.0) {
            if (width == 480.0f) { return iPone4; } else { return iPone5; }
         } else if (height == 375.0f) { return iPone6; }
           else if (height == 414.0f) { return iPone6Plus; }
    }

    return Unknown;
}

@end
