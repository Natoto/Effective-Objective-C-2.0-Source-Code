//
//  ViewController.m
//  Effective-Objective-C-2.0-Item 35
//
//  Created by maiyun on 15/6/10.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import "ViewController.h"
#import "EOCClass.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    EOCClass __block *xx;
    dispatch_sync(dispatch_queue_create("dsafsd", nil), ^{
            xx = [[EOCClass alloc]init];
            NSLog(@"before release:/n");
            [xx printClassInfo:xx];
    });
    dispatch_sync(dispatch_get_main_queue(), ^{
        [xx printClassInfo:xx];
    });
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
