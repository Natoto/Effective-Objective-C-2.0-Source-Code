//
//  EOCPerson.h
//  Effective-Objective-C-2.0-Item 18
//
//  Created by maiyun on 15/6/8.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface EOCPerson : NSObject
@property(nonatomic,copy,readonly)NSString *firstName;
@property(nonatomic,copy,readonly)NSString *lastName;
@property(nonatomic,strong,readonly)NSSet *friends;
-(id)initWithFirstName:(NSString *)firstName andLastName:(NSString *)lastName;
-(void)addFriend:(EOCPerson *)person;
-(void)removeFriend:(EOCPerson *)person;
@end
