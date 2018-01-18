//
//  NSNotification+Message.h
//  ioscategory
//
//  Created by admin on 2017/9/29.
//  Copyright © 2017年 whsct. All rights reserved.
//

#import <Foundation/Foundation.h>

// notification
#define DID_LOGIN_NOTIFICATION              @"DID_LOGIN_NOTIFICATION"           //登陆成功
#define DID_LOGINFAIL_NOTIFICATION          @"DID_LOGINFAIL_NOTIFICATION"       //登陆失败
#define DID_LOGOUT_NOTIFICATION             @"DID_LOGOUT_NOTIFICATION"

#define DID_ENTERROOM_NOTIFICATION          @"DID_EnterRoom_NOTIFICATION"       //进入房间成功
#define DID_ENTERROOMFAIL_NOTIFICATION      @"DID_EnterRoomFAIL_NOTIFICATION"   //进入房间失败
#define DID_QUITROOM_NOTIFICATION           @"DID_QuitRoom_NOTIFICATION"

#define DIDRECV_WXRESPONSE_NOTIFICATION     @"DIDRECV_WXRESPONSE_NOTIFICATION"
#define PayFinished_NOTIFICATION            @"DID_PAYFINISH_NOTIFICATION"

@interface NSNotification(Message)

+ (void)postDidLogin;
+ (void)postDidLogout;

+ (void)postFailEnterRoom;
+ (void)postDidEnterRoom;
+ (void)postDidQuitRoom;

//+ (void)postPayFinishorderid:(NSString *)orderId;

@end
