//
//  ViewController.m
//  Effective-Objective-C-2.0-Item 21
//
//  Created by maiyun on 15/6/8.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import "ViewController.h"
#import "EOCErrors.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSError *error;
    EOCErrors *ss = [[EOCErrors alloc]init];
    BOOL returnResult = [ss doSomething:&error];
    
    NSLog(@"%d---%@",returnResult,error);
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
