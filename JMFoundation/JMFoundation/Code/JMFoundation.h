

//
//  JMFoundation.h
//  JMFoundation
//
//  Created by 山神 on 2019/2/22.
//  Copyright © 2019 山神. All rights reserved.
//

#ifndef JMFoundation_h

#define JMFoundation_h
#ifdef DEBUG
#define JMFLog(fmt, ...) NSLog((@"<%s : %d> %s  " fmt), [[[NSString stringWithUTF8String:__FILE__] lastPathComponent] UTF8String], __LINE__, __PRETTY_FUNCTION__, ##__VA_ARGS__);
#else
#define JMFLog(...)
#endif

#import "JMFProxy.h"


#endif /* JMFoundation_h */
