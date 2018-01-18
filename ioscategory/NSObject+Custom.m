//
//  NSObject+Custom.m
//  ioscategory
//
//  Created by admin on 2017/10/7.
//  Copyright © 2017年 whsct. All rights reserved.
//

#import "NSObject+Custom.h"
//#import "ApplicationModel.h"

@interface NSNumber(Custom)

@end

@implementation NSNumber(Custom)

@end


@implementation NSObject(Custom)

//将一个指定的图形放大或缩小为指定的size
- (UIImage*)scaleToSize:(UIImage*)img size:(CGSize)size {
    // 创建一个bitmap的context
    // 并把它设置成为当前正在使用的context
    UIGraphicsBeginImageContext(size);
    
    // 绘制改变大小的图片
    [img drawInRect:CGRectMake(0, 0, size.width, size.height)];
    
    // 从当前context中创建一个改变大小后的图片
    UIImage* scaledImage = UIGraphicsGetImageFromCurrentImageContext();
    
    // 使当前的context出堆栈
    UIGraphicsEndImageContext();
    
    // 返回新的改变大小后的图片
    return scaledImage;
}


@end

@implementation NSObject(TAG)

@end

@implementation NSObject(Refenence)

@end

//#define KEYPATH1 @"user"
//@implementation NSObject(Observ)
//
//- (void)reloadbyUserChange {
////    current user status change
//
//}
//
//- (void)adduserobserver {
//    //ioscategoryLog(@"adduserobserver==:%@",NSStringFromClass([self class]));
//    [[ApplicationModel sharedApplicationModel] addObserver:self forKeyPath:KEYPATH1 options:NSKeyValueObservingOptionNew|NSKeyValueObservingOptionOld context:NULL];
//}
//
//- (void)removeuserobserver {
//    //ioscategoryLog(@"removeuserobserver==:%@",NSStringFromClass([self class]));
//    [[ApplicationModel sharedApplicationModel] removeObserver:self forKeyPath:KEYPATH1];
//}
//
//- (void)reloadbynetstatuschange {
//    //    current net status change
//}
//
//- (void)addNetWorkStatusObserv {
//    [[NSNotificationCenter defaultCenter] addObserver:self
//                                             selector:@selector(networkReachabilityStatusDidChange:)
//                                                 name:AFNetworkingReachabilityDidChangeNotification
//                                               object:nil];
//}
//
//- (void)removeNetWorkStatusObserv {
//    [[NSNotificationCenter defaultCenter] removeObserver:self
//                                                    name:AFNetworkingReachabilityDidChangeNotification
//                                                  object:nil];
//}
//
//- (void)networkReachabilityStatusDidChange:(NSNotification *)notify {
//    if ([AFNetworkReachabilityManager sharedManager].reachable) {
//        dispatch_async(dispatch_get_main_queue(), ^{
//            [self reloadbynetstatuschange];
//        });
//    }
//    
////    ioscategoryLog(@"网络变化通知：%@",notify.userInfo[AFNetworkingReachabilityNotificationStatusItem]);
////    AFNetworkReachabilityStatus status = [notify.userInfo[AFNetworkingReachabilityNotificationStatusItem] integerValue];
//}
//
//- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context {
//    if([keyPath isEqualToString:KEYPATH1]) {
//        [self reloadbyUserChange];
//    }
//}
//
//@end

