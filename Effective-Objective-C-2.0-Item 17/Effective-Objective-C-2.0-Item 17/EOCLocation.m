//
//  EOCLocation.m
//  Effective-Objective-C-2.0-Item 17
//
//  Created by maiyun on 15/6/8.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import "EOCLocation.h"

@implementation EOCLocation
-(id)initWithTitle:(NSString *)title latitude:(float)latitude longitude:(float)longitude{
    if (self = [super init]) {
        _title = [title copy];
        _latitude = latitude;
        _longitude = longitude;
    }
    return self;
}
-(NSString *)description{
    return [NSString stringWithFormat:@"<%@: %p, %@>",
            [self class],
            self,
            @{@"title":_title,
              @"latitude":@(_latitude),
              @"longitude":@(_longitude)}];
}
@end
