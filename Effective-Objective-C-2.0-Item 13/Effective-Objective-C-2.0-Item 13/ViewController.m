//
//  ViewController.m
//  Effective-Objective-C-2.0-Item 13
//
//  Created by maiyun on 15/6/6.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import "ViewController.h"
#import "NSString+EOCMyAdditions.h"
#import <objc/runtime.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //得到两个方法
    Method originalMethod = class_getInstanceMethod([NSString class], @selector(lowercaseString));
    Method swappedMethod = class_getInstanceMethod([NSString class], @selector(eoc_myLowercaseString));
    //调换他们的具体实现
    method_exchangeImplementations(originalMethod, swappedMethod);
    
    NSString *string = @"This iS tHe StRiNg";
    //这里实际调用eoc_myLowercaseString的实现
    NSString *lowercaseString = [string lowercaseString];
    nsl
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
