//
//  EOCPerson.m
//  Effective-Objective-C-2.0-Item 41
//
//  Created by 黄成都 on 15/6/10.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import "EOCPerson.h"

@implementation EOCPerson
@synthesize name,age,wife = _wife;

-(instancetype)init{
    if (self = [super init]) {
        _syncQueue = dispatch_queue_create("com.effectiveobjectivec.syncQueue", NULL);//穿行队列
        _currentQueue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT   , 0);//并行队列
    }
    return self;
}

//通过synchronized方法来设置和读取属性
-(void)setName:(NSString *)name1{
    NSString *temp = [name1 copy];
    @synchronized(self){
        name = temp;
    }
}
-(NSString *)name{
    @synchronized(self){
        return name;
    }
}
//通过串行队列实现
-(NSString *)age{
    __block NSString *localAge;
    dispatch_sync(_syncQueue, ^{
        localAge = age;
    });
    return localAge;
}

-(void)setAge:(NSString *)age1{
    dispatch_sync(_syncQueue, ^{
        age = age1;
    });
}

//通过并行队列实现
-(NSString *)wife{
    __block NSString *localSomeString;
    dispatch_sync(_currentQueue, ^{
        localSomeString = _wife;
    });
    return localSomeString;
}

-(void)setWife:(NSString *)wife{
    dispatch_barrier_async(_currentQueue, ^{
        _wife = wife;
    });
}


@end
