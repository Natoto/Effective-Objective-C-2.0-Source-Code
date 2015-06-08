//
//  EOCRectangle.m
//  Effective-Objective-C-2.0-Item 16
//
//  Created by maiyun on 15/6/8.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import "EOCRectangle.h"

@implementation EOCRectangle
-(id)initWithWidth:(float)width addHeight:(float)height{
    if (self == [super init]) {
        _width = width;
        _height = height;
    }
    return self;
}
-(instancetype)init{
    return [self initWithWidth:5.0 addHeight:10.0];
}
//-(instancetype)init{
//    @throw [NSException exceptionWithName:NSInternalInconsistencyException reason:@"you muser user initWithWidth: addHeight: instead" userInfo:nil];
//}

-(id)initWithCoder:(NSCoder *)aDecoder{
    if (self = [super init]) {
        _width = [aDecoder decodeFloatForKey:@"width"];
        _height = [aDecoder decodeFloatForKey:@"height"];
    }
    return self;
}

@end
