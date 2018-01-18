//
//  NSObject+Custom.h
//  ioscategory
//
//  Created by admin on 2017/10/7.
//  Copyright © 2017年 whsct. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef void (^MessionCompletionHandler)(bool result);


@interface NSObject(Custom)
- (UIImage*)scaleToSize:(UIImage*)img size:(CGSize)size;

@end

//@interface NSObject(Observ)
//
////监视用户状态更新
//- (void)adduserobserver;
//- (void)removeuserobserver;
//- (void)reloadbyUserChange;
//
////监视网络状态更新
//- (void)addNetWorkStatusObserv;
//- (void)removeNetWorkStatusObserv;
//- (void)reloadbynetstatuschange;
//@end

@interface NSObject(TAG)

@end

@interface NSObject(Refenence)

@end

