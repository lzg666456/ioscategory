//
//  NSUserDefaults+Settings.m
//  ioscategory
//
//  Created by admin on 2017/8/22.
//  Copyright © 2017年 whsct. All rights reserved.
//

#import "NSUserDefaults+Settings.h"

static NSString * const kSettingAutologin               = @"kSettingAutoLogin";
static NSString * const kSettingNotify                  = @"kSettingNotify";
static NSString * const kSettingDanmu                   = @"kSettingDanmu";
static NSString * const kSettingShowAlluser             = @"kSettingShowAlluser";

static NSString * const kSettingSandBoxFlag             = @"kSettingSandBoxFlag";
static NSString * const kIAPPayFlag                     = @"kPayFlag";


static NSString * const kSettingNotifySound             = @"KNotifySound";
static NSString * const kSettingOnlyVoice               = @"KOnlyVoice";

@implementation NSUserDefaults(Settings)

+ (void)LoadDefaultSetting {
    // 只执行一次
    if (![[NSUserDefaults standardUserDefaults] boolForKey:@"InstallFlag"]) {
        [[NSUserDefaults standardUserDefaults] setBool:YES forKey:@"InstallFlag"];
        
        [NSUserDefaults saveNotifySetting:YES];         //允许远程消息通知
        [NSUserDefaults saveDammuSetting:YES];          //显示弹幕
        [NSUserDefaults saveShowAlluserSetting:YES];    //显示所有用户
        [NSUserDefaults saveSandBoxFlagSetting:YES];    //沙盒运行标志
        [NSUserDefaults saveIAPPayFlagSetting:YES];     //使用IAP支付标志
        
        //注册远端消息通知获取device token
        [[UIApplication sharedApplication] registerForRemoteNotifications];
    }
    
    // 每次执行
    [NSUserDefaults saveIncomingAvatarSetting:YES];
    [NSUserDefaults saveOutgoingAvatarSetting:YES];
}

+ (void)saveAutologinSetting:(BOOL)value{
    [[NSUserDefaults standardUserDefaults] setBool:value forKey:kSettingAutologin];
}

+ (BOOL)autologinSetting{
    return [[NSUserDefaults standardUserDefaults] boolForKey:kSettingAutologin];
}

+ (void)saveNotifySoundSetting:(BOOL)value{
    [[NSUserDefaults standardUserDefaults] setBool:value forKey:kSettingNotifySound];
}

+ (BOOL)NotifySoundSetting{
    return [[NSUserDefaults standardUserDefaults] boolForKey:kSettingNotifySound];
}

+ (void)saveOnlyVoiceSetting:(BOOL)value{
    [[NSUserDefaults standardUserDefaults] setBool:value forKey:kSettingOnlyVoice];
}
+ (BOOL)OnlyVoiceSetting{
    return [[NSUserDefaults standardUserDefaults] boolForKey:kSettingOnlyVoice];
}


+ (void)saveNotifySetting:(BOOL)value{
    [[NSUserDefaults standardUserDefaults] setBool:value forKey:kSettingNotify];
}

+ (BOOL)notifySetting{
    return [[NSUserDefaults standardUserDefaults] boolForKey:kSettingNotify];
}

+ (void)saveDammuSetting:(BOOL)value{
    [[NSUserDefaults standardUserDefaults] setBool:value forKey:kSettingDanmu];
}

+ (BOOL)danmuSetting{
    return [[NSUserDefaults standardUserDefaults] boolForKey:kSettingDanmu];
}

+ (void)saveShowAlluserSetting:(BOOL)value{
    [[NSUserDefaults standardUserDefaults] setBool:value forKey:kSettingShowAlluser];
}

+ (BOOL)showAlluserSetting{
    return [[NSUserDefaults standardUserDefaults] boolForKey:kSettingShowAlluser];
}

+ (void)saveSandBoxFlagSetting:(BOOL)value{
    [[NSUserDefaults standardUserDefaults] setBool:value forKey:kSettingSandBoxFlag];
}

+ (BOOL)sandBoxFlagSetting{
    return [[NSUserDefaults standardUserDefaults] boolForKey:kSettingSandBoxFlag];
}

+ (void)saveIAPPayFlagSetting:(BOOL)value{
    [[NSUserDefaults standardUserDefaults] setBool:value forKey:kIAPPayFlag];
}

+ (BOOL)IAPPayFlagSetting{
    return [[NSUserDefaults standardUserDefaults] boolForKey:kIAPPayFlag];
}

@end
