//
//  JMFTimer.h
//  JMFoundation
//
//  Created by 山神 on 2019/2/22.
//  Copyright © 2019 山神. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
/**
 GCD 定时器准时定时器
 */
@interface JMFTimer : NSObject
/**
 定时器开启

 @param task 任务
 @param start 开始时间
 @param interval 间隔
 @param repeats 是否重复
 @param async 是否同步
 @return 定时器的名称
 */
+ (NSString *)execTask:(void(^)(void))task start:(NSTimeInterval)start interval:(NSTimeInterval)interval repeats:(BOOL)repeats async:(BOOL)async;

+ (NSString *)execTask:(id)target selector:(SEL)selector start:(NSTimeInterval)start interval:(NSTimeInterval)interval repeats:(BOOL)repeats async:(BOOL)async;

/**
 取消

 @param name 定时器的名称
 */
+ (void)cancelTask:(NSString *)name;
@end

NS_ASSUME_NONNULL_END
