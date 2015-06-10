//
//  ViewController.m
//  Effective-Objective-C-2.0-Item 44
//
//  Created by 黄成都 on 15/6/11.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import "ViewController.h"
#import "EOCPerson.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSMutableArray *mutableArray = [NSMutableArray array];
    for (int index = 0; index < 10; index++) {
        EOCPerson *person = [[EOCPerson alloc]init];
        [mutableArray addObject:person];
    }
    
    dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    dispatch_group_t dispatchGroup = dispatch_group_create();
    for (EOCPerson *person in mutableArray) {
        dispatch_group_async(dispatchGroup, queue, ^{
            [person DoSomeThing];
        });
    }
    dispatch_queue_t notifyQueue = dispatch_get_main_queue();
    dispatch_group_notify(dispatchGroup, notifyQueue, ^{
        NSLog(@"哈哈哈哈");
    });
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
