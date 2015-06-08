//
//  EOCSquare.m
//  Effective-Objective-C-2.0-Item 16
//
//  Created by maiyun on 15/6/8.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import "EOCSquare.h"

@implementation EOCSquare

-(id)initWithWidth:(float)width addHeight:(float)height{
    float dimension = MAX(width, height);
    return [self initWithDimension:dimension];
}

//-(id)initWithWidth:(float)width addHeight:(float)height{
//    @throw [NSException exceptionWithName:NSInternalInconsistencyException reason:@"must user initwidthdimension instead" userInfo:nil];
//}

-(id)initWithDimension:(float)dimension{
    return [super initWithWidth:dimension addHeight:dimension];
}

- (instancetype)init
{
    return [self initWithDimension:5.0f];
}

-(id)initWithCoder:(NSCoder *)aDecoder{
    if (self = [super initWithCoder:aDecoder]) {
        
    }
    return self;
}

@end
