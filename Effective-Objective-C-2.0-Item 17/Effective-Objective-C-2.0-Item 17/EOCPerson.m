//
//  EOCPerson.m
//  Effective-Objective-C-2.0-Item 17
//
//  Created by maiyun on 15/6/8.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import "EOCPerson.h"

@implementation EOCPerson
-(id)initWithFirstName:(NSString *)firstName lastName:(NSString *)lastName{
    if (self == [super init]) {
        _firstName = [firstName copy];
        _lastName = [lastName copy];
    }
    return self;
}
-(NSString *)description{
    return [NSString stringWithFormat:@"<%@: %p, \" %@ %@ \">",[self class],self,_firstName,_lastName];
}

-(NSString *)debugDescription{
    return [NSString stringWithFormat:@"<%@: %p, \"%@ %@\">",[self class],self,_firstName,_lastName];
}
@end
