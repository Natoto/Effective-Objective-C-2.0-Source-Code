//
//  EOCPerson+Friendship.m
//  Effective-Objective-C-2.0-Item 26
//
//  Created by 黄成都 on 15/6/9.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import "EOCPerson+Friendship.h"
#import <objc/runtime.h>

static const char *kFriendsPropertyKey = "kFriendsPropertyKey";

@implementation EOCPerson (Friendship)
-(NSArray *)friends{
    return objc_getAssociatedObject(self, kFriendsPropertyKey);
}

-(void)setFriends:(NSArray *)friends{
    objc_setAssociatedObject(self, kFriendsPropertyKey, friends, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

@end
