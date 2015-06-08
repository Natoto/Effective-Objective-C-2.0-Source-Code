//
//  ViewController.m
//  Effective-Objective-C-2.0-Item 15
//
//  Created by maiyun on 15/6/8.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import "ViewController.h"
#import "EOCSoundPlayer.h"

@interface ViewController ()<EOCSoundPlayerDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
     NSString *path = [NSString stringWithFormat:@"/System/Library/Audio/UISounds/%@",@"sms-received1.caf"];
    
    EOCSoundPlayer *player =[[EOCSoundPlayer alloc]initWithURL:[NSURL URLWithString:path]];
    player.delegate = self;
    [player playSound];
}

-(void)soundPlayerDidFinish:(EOCSoundPlayer *)player{
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
