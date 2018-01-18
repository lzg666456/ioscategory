//
//  NSUserDefaults+Settings.h
//  ioscategory
//
//  Created by admin on 2017/8/22.
//  Copyright © 2017年 whsct. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

#import "NSUserDefaults+DemoSettings.h"

@interface NSUserDefaults(Settings)

+ (void)LoadDefaultSetting;
    
//沙盒\生产环境标志
+ (void)saveSandBoxFlagSetting:(BOOL)value;
+ (BOOL)sandBoxFlagSetting;
    
+ (void)saveIAPPayFlagSetting:(BOOL)value;
+ (BOOL)IAPPayFlagSetting;

+ (void)saveAutologinSetting:(BOOL)value;
+ (BOOL)autologinSetting;

+ (void)saveNotifySoundSetting:(BOOL)value;
+ (BOOL)NotifySoundSetting;

+ (void)saveOnlyVoiceSetting:(BOOL)value;
+ (BOOL)OnlyVoiceSetting;

+ (void)saveNotifySetting:(BOOL)value;
+ (BOOL)notifySetting;

+ (void)saveDammuSetting:(BOOL)value;
+ (BOOL)danmuSetting;

+ (void)saveShowAlluserSetting:(BOOL)value;
+ (BOOL)showAlluserSetting;

@end
