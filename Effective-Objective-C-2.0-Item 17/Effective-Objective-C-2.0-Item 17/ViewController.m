//
//  ViewController.m
//  Effective-Objective-C-2.0-Item 17
//
//  Created by maiyun on 15/6/8.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import "ViewController.h"
#import "EOCPerson.h"
#import "EOCLocation.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    EOCPerson *person = [[EOCPerson alloc]initWithFirstName:@"Bob" lastName:@"Smith"];
    
    NSLog(@"person = %@",person);
    
    EOCLocation *location = [[EOCLocation alloc]initWithTitle:@"测试" latitude:12 longitude:28];
    NSLog(@"location = %@",location);
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
