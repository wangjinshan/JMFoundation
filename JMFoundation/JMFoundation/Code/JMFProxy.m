
//
//  JMFProxy.m
//  JMFoundation
//
//  Created by 山神 on 2019/2/22.
//  Copyright © 2019 山神. All rights reserved.
//

#import "JMFProxy.h"
#import <objc/runtime.h>
@implementation JMFProxy

+ (instancetype)proxyWithTarget:(id)target{
    // NSProxy对象不需要调用init，因为它本来就没有init方法
    JMFProxy *proxy = [JMFProxy alloc];
    proxy.target = target;
    return proxy;
}

/**
 这个函数让重载方有机会抛出一个函数的签名，再由后面的forwardInvocation:去执行
 为给定消息提供参数类型信息
 */
- (NSMethodSignature *)methodSignatureForSelector:(SEL)sel{
    if ([self.target respondsToSelector:sel]) {
        return [self.target methodSignatureForSelector:sel];
    }
    return [NSMethodSignature signatureWithObjCTypes:"v@:"];
}
/**
 *  NSInvocation封装了NSMethodSignature，通过invokeWithTarget方法将消息转发给其他对象.这里转发给控制器执行。
 */
- (void)forwardInvocation:(NSInvocation *)invocation{
    SEL selector = [invocation selector];
    if ([self.target respondsToSelector:selector]) {
        [invocation invokeWithTarget:self.target];
    }else{
        class_addMethod([self class], selector, (IMP)timerMustInvalidate, "v@:");
        [invocation invokeWithTarget:self];  // 唤醒这个方法
    }
}

void timerMustInvalidate(id self, SEL _cmd){
#ifdef DEBUG
    NSLog(@"定时器对象没有释放,请执行 [self.timer invalidate]");
#else
#endif
}

/*
 *          代表  char *
 char BOOL  代表  c
 :          代表  SEL
 ^type      代表  type *
 @          代表  NSObject * 或 id
 ^@         代表  NSError **
 #          代表  NSObject
 v          代表  void
 */

@end



