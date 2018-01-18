//
//  NSNotification+Message.m
//  ioscategory
//
//  Created by admin on 2017/9/29.
//  Copyright © 2017年 whsct. All rights reserved.
//

#import "NSNotification+Message.h"

@implementation NSNotification(Message)
//
//
+ (void)postFailEnterRoom {
    [[NSNotificationCenter defaultCenter] postNotificationName:DID_ENTERROOMFAIL_NOTIFICATION object:nil];
}

//
//
+ (void)postDidEnterRoom {
    [[NSNotificationCenter defaultCenter] postNotificationName:DID_ENTERROOM_NOTIFICATION object:nil];
}

//
//
+ (void)postDidQuitRoom {
    [[NSNotificationCenter defaultCenter] postNotificationName:DID_QUITROOM_NOTIFICATION object:nil];
}

//
//
+ (void)postDidLogin{
    [[NSNotificationCenter defaultCenter] postNotificationName:DID_LOGIN_NOTIFICATION object:nil];
}

+ (void)postDidLogout{
    [[NSNotificationCenter defaultCenter] postNotificationName:DID_LOGOUT_NOTIFICATION object:nil];
}

//
//
//+ (void)postPayFinishorderid:(NSString *)orderId {
//    [[NSNotificationCenter defaultCenter] postNotificationName:PayFinished_NOTIFICATION object:orderId];
//}

@end
