//
//  ViewController.m
//  Effective-Objective-C-2.0-Item 24
//
//  Created by 黄成都 on 15/6/9.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import "ViewController.h"
#import "EOCPerson.h"
#import "EOCPerson+Work.h"
#import "EOCPerson+Play.h"
#import "EOCPerson+Friendship.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    EOCPerson *person = [[EOCPerson alloc]init];
    [person goToTheCinema];//分类方法
    [person isFriendsWith:person];//分类方法
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
