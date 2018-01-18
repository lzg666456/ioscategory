//
//  UIDevice+PhoneModel.h
//  ImagePickerViewController
//
//  Created by 魏琦 on 16/8/9.
//  Copyright © 2016年 com.drcacom.com. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

enum {
    MODEL_IPHONE_SIMULATOR,
    MODEL_IPOD_TOUCH,
    MODEL_IPHONE,
    MODEL_IPHONE_3G,
    MODEL_IPAD
};

typedef NS_ENUM(char,PhoneModel) {
    iPone4,//320*480
    iPone5,//320*568
    iPone6,//376*667
    iPone6Plus,//414*736
    iPoneX, //1125, 2436
    Unknown
};

@interface UIDevice (PhoneModel)

+ (PhoneModel)iPoneModel;

+ (uint) detectDevice;

+ (NSString *) DeviceName:(BOOL)ignoreSimulator;

@end
