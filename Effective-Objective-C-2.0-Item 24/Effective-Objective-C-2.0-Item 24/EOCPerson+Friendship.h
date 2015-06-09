//
//  EOCPerson+Friendship.h
//  Effective-Objective-C-2.0-Item 24
//
//  Created by 黄成都 on 15/6/9.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import "EOCPerson.h"

@interface EOCPerson (Friendship)
-(void)addFriend:(EOCPerson *)person;
-(void)removeFriend:(EOCPerson *)person;
-(BOOL)isFriendsWith:(EOCPerson *)person;
@end
