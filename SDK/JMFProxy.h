//
//  JMFProxy.h
//  JMFoundation
//
//  Created by 山神 on 2019/2/22.
//  Copyright © 2019 山神. All rights reserved.
//

#import <Foundation/Foundation.h>
/**
 解决NSTimer Displaylink 导致的定时器不准时
 */
@interface JMFProxy : NSProxy
+ (instancetype)proxyWithTarget:(id)target;
@property (weak, nonatomic) id target;
@end

