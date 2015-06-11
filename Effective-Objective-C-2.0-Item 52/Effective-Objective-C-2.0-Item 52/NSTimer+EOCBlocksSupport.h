//
//  NSTimer+EOCBlocksSupport.h
//  
//
//  Created by maiyun on 15/6/11.
//
//

#import <Foundation/Foundation.h>

@interface NSTimer (EOCBlocksSupport)
+(NSTimer *)eoc_scheduledTimerWithTimeInterval:(NSTimeInterval)interval block:(void (^) ())block repeats:(BOOL)repeats;
@end
