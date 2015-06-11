//
//  ViewController.m
//  Effective-Objective-C-2.0-Item 12
//
//  Created by 黄成都 on 15/6/11.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import "ViewController.h"
#import "EOCAutoDictionary.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    EOCAutoDictionary *eocDic = [EOCAutoDictionary new];
    eocDic.date = [NSDate dateWithTimeIntervalSince1970:475372800];
    NSLog(@"dic.date = %@",eocDic.date);
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
