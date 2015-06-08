//
//  EOCPerson.h
//  Effective-Objective-C-2.0-Item 17
//
//  Created by maiyun on 15/6/8.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface EOCPerson : NSObject
@property(nonatomic,copy,readonly)NSString *firstName;
@property(nonatomic,copy,readonly)NSString *lastName;
-(id)initWithFirstName:(NSString *)firstName lastName:(NSString *)lastName;
@end
