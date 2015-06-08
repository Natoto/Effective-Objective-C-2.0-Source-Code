//
//  EOCPerson.m
//  Effective-Objective-C-2.0-Item 18
//
//  Created by maiyun on 15/6/8.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import "EOCPerson.h"

@interface EOCPerson ()
@property(nonatomic,copy,readwrite)NSString *firstName;
@property(nonatomic,copy,readwrite)NSString *lastName;
@end

@implementation EOCPerson
{
    NSMutableSet *_internalFriends;
}
-(NSSet *)friends{
    return [_internalFriends copy];
}

-(void)addFriend:(EOCPerson *)person{
    [_internalFriends addObject:person];
}
-(void)removeFriend:(EOCPerson *)person{
    [_internalFriends removeObject:person];
}

-(id)initWithFirstName:(NSString *)firstName andLastName:(NSString *)lastName{
    if (self = [super init]) {
        _firstName = firstName;
        _lastName = lastName;
        _internalFriends = [NSMutableSet set];
    }
    return self;
}
@end
