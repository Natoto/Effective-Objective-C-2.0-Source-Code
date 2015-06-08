//
//  ViewController.m
//  Effective-Objective-C-2.0-Item 18
//
//  Created by maiyun on 15/6/8.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import "ViewController.h"
#import "EOCPointOfInterest.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    EOCPointOfInterest *interest = [[EOCPointOfInterest alloc]initWithIdentifier:@"123" title:@"北京" latitude:34.0f longitude:12.0f];
    //不可以，因为只读
   // interest.identifier = @"234";
    //但是可以通过kvc来修改
    [interest setValue:@"234" forKey:@"identifier"];
    NSLog(@"%@",interest);
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
