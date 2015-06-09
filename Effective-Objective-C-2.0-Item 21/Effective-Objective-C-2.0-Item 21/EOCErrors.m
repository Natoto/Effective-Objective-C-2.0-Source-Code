//
//  EOCErrors.m
//  Effective-Objective-C-2.0-Item 21
//
//  Created by maiyun on 15/6/8.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import "EOCErrors.h"

@implementation EOCErrors


-(BOOL)doSomething:(NSError *__autoreleasing *)error{
    NSString * const EOCErrorDomain = @"ASDFASDF";
    
    if (error) {
        *error = [NSError errorWithDomain:EOCErrorDomain code:EOCErrorBadInput userInfo:nil];
        return NO;
    }
    return YES;
}
@end
