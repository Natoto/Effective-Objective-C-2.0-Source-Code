//
//  ViewController.m
//  Effective-Objective-C-2.0-Item 42
//
//  Created by 黄成都 on 15/6/11.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
-(void)doSomeThing;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    SEL selector = @selector(doSomeThing);
    [self performSelector:selector withObject:nil afterDelay:5.0];
    dispatch_time_t time = dispatch_time(DISPATCH_TIME_NOW, (int64_t)(5.0 * NSEC_PER_SEC));
    dispatch_after(time, dispatch_get_main_queue(), ^{
        [self doSomeThing];
    });
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

-(void)doSomeThing{
    NSLog(@"xxxxxxxx");
}



@end
