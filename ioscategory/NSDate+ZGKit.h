//
//  NSDate+ZGKit.h
//  iphone
//
//  Created by admin on 2017/12/8.
//  Copyright © 2017年 zysdinfo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NSDate(ZGKit)

//2、判断NSDate是星期几
- (NSString*)weekdayStringFromDate:(NSDate*)inputDate;

//3、判断NSDate的农历
-(NSString*)getChineseCalendarWithDate:(NSDate *)date;

/**
 *
 * 根据日期星期获取今天是星期几
 */
+ (NSString*)weekdayStringFromDate:(NSDate*)inputDate;

//  判断当前时间是否在fromHour和toHour之间。如，fromHour=8，toHour=23时，即为判断当前时间是否在8:00-23:00之间
//+ (BOOL)isBetweenFromHour:(NSInteger)fromHour toHour:(NSInteger)toHour;


//@brief 生成当天的某个点（返回的是伦敦时间，可直接与当前时间[NSDate date]比较）
//@param hour 如hour为“8”，就是上午8:00（本地时间）
+ (NSDate *)getCustomDateWithHour:(NSInteger)hour;

//时间比较
+ (NSTimeInterval)getTimeIntervalWithDateString:(NSString *)dateString;

+ (NSString *)getDateStringWithTimeInterval:(NSTimeInterval)timeInterval;

+ (NSDate *)getDateWithDateString:(NSString *)dateString;

// @brief 转换成 gmt date
+ (NSDate *)toLocaleDate:(NSDate *)date;

// @brief 转换成 gmt date
+ (NSDate *)getLocaleDate;

// @brief date格式化 "yyyy-MM-dd HH:mm";
+ (NSString *)getDateWithTDateString:(NSDate *)dateString;

// @brief date格式化 "yyyy-MM-dd HH:mm:ss";
+ (NSString *)getDateStringWithDate:(NSDate *)dateString;

// @brief date格式化 MM-dd
+ (NSString *)stringFromDate:(NSDate *)date;

@end
