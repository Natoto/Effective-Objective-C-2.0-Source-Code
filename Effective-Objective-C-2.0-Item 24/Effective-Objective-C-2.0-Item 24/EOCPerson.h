//
//  EOCPerson.h
//  Effective-Objective-C-2.0-Item 24
//
//  Created by 黄成都 on 15/6/9.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface EOCPerson : NSObject
@property(nonatomic,copy,readonly)NSString *firstName;
@property(nonatomic,copy,readonly)NSString *lastName;
@property(nonatomic,copy,readonly)NSArray *friends;
-(id)initWithFirstName:(NSString *)firstName andLastName:(NSString *)lastName;
@end
