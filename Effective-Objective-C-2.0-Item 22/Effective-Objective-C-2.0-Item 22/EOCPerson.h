//
//  EOCPerson.h
//  Effective-Objective-C-2.0-Item 22
//
//  Created by maiyun on 15/6/9.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface EOCPerson : NSObject<NSCopying>
@property(nonatomic,copy,readonly)NSString *firstName;
@property(nonatomic,copy,readonly)NSString *lastName;
-(id)initWithFirstName:(NSString *)firstName andLastName:(NSString *)lastName;
-(void)addFriend:(EOCPerson *)person;
-(void)removeFriend:(EOCPerson *)person;
@end
