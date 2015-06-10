//
//  HCDViewController.m
//  Effective-Objective-C-2.0-Item 38
//
//  Created by 黄成都 on 15/6/10.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import "HCDViewController.h"

typedef int(^EOCSomeBlock)(BOOL flag, int value);

@interface HCDViewController ()

@end

@implementation HCDViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    int (^VariableName) (BOOL flag, int value) = ^(BOOL flag, int value){
        
        return value;
    };
    VariableName(YES,1);
    
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
