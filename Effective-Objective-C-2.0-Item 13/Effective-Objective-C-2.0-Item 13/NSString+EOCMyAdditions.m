//
//  NSString+EOCMyAdditions.m
//  Effective-Objective-C-2.0-Item 13
//
//  Created by maiyun on 15/6/6.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import "NSString+EOCMyAdditions.h"

@implementation NSString (EOCMyAdditions)
-(NSString *)eoc_myLowercaseString{
    //这里实际上会调用lowercaseString的实现。所以没有循环调用
    NSString *lowercase = [self eoc_myLowercaseString];
    NSLog(@"%@ => %@",self,lowercase);
    return lowercase;
}
@end
