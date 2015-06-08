//
//  EOCPointOfInterest.m
//  Effective-Objective-C-2.0-Item 18
//
//  Created by maiyun on 15/6/8.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import "EOCPointOfInterest.h"



@interface EOCPointOfInterest()
@property(nonatomic,copy)NSString *identifier;
@property(nonatomic,copy)NSString *title;
@property(nonatomic,assign)float latitude;
@property(nonatomic,assign)float longitude;
@end

@implementation EOCPointOfInterest
-(id)initWithIdentifier:(NSString *)identifier title:(NSString *)title latitude:(float)latitude longitude:(float)longitude{
    if (self = [super init]) {
        _identifier = identifier;
        _title = title;
        _latitude = latitude;
        _longitude = longitude;
    }
    return self;
}
@end
