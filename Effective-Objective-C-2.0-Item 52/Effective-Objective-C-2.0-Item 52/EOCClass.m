//
//  EOCClass.m
//  Effective-Objective-C-2.0-Item 52
//
//  Created by 黄成都 on 15/6/11.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import "EOCClass.h"
#import "NSTimer+EOCBlocksSupport.h"

@interface EOCClass()
{
    NSTimer *_pollTimer;
}
@end

@implementation EOCClass
-(instancetype)init{
    return [super init];
}

-(void)stopPolling{
    [_pollTimer invalidate];
    _pollTimer = nil;
}

-(void)startPolling{
    //_pollTimer = [NSTimer scheduledTimerWithTimeInterval:5.0 target:self selector:@selector(p_doPoll) userInfo:nil repeats:YES];
    
    __weak EOCClass *weakSelf = self;
    _pollTimer = [NSTimer eoc_scheduledTimerWithTimeInterval:5.0 block:^{
        EOCClass *strongSelf = weakSelf;
        [strongSelf p_doPoll];
    } repeats:YES];
}

-(void)p_doPoll
{
    
}

-(void)dealloc{
    [_pollTimer invalidate];
}
@end
