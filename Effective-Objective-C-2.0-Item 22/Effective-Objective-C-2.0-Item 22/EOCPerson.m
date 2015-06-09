//
//  EOCPerson.m
//  Effective-Objective-C-2.0-Item 22
//
//  Created by maiyun on 15/6/9.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import "EOCPerson.h"

@implementation EOCPerson{
    NSMutableSet *_friends;
}
-(id)initWithFirstName:(NSString *)firstName andLastName:(NSString *)lastName{
    if (self = [super init]) {
        _firstName = firstName;
        _lastName = lastName;
        _friends = [NSMutableSet new];
    }
    return self;
}

-(void)addFriend:(EOCPerson *)person{
    [_friends addObject:person];
}
-(void)removeFriend:(EOCPerson *)person{
    [_friends removeObject:person];
}


-(id)copyWithZone:(NSZone *)zone{
    EOCPerson *copy = [[[self class] allocWithZone:zone]initWithFirstName:_firstName andLastName:_lastName];
    //通过这个操作符来操作指定对象的实例变量。下面这个事浅拷贝
    //copy->_friends = [_friends mutableCopy];
    //深拷贝
    copy->_friends = [[NSMutableSet alloc]initWithSet:_friends copyItems:YES];
    return copy;
}
@end
