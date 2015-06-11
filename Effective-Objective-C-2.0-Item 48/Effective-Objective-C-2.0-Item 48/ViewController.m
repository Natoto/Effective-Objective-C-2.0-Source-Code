//
//  ViewController.m
//  Effective-Objective-C-2.0-Item 48
//
//  Created by maiyun on 15/6/11.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //-----------慢速遍历
    NSArray *array = @[@"1",@"2",@"3",@"4"];
    NSEnumerator *enumerator = [array objectEnumerator];
    enumerator = [array reverseObjectEnumerator];
    id object;
    while ((object = [enumerator nextObject]) != nil) {
        //NSLog(@"%@",object);
    }
    NSDictionary *aDictionary = @{
                                  @"first":@"1",
                                  @"second":@"2",
                                  @"third":@"3"
                                  };
    id key;
    enumerator = [aDictionary keyEnumerator];
    while ((key = [enumerator nextObject]) != nil) {
        //NSLog(@"%@---%@",key,aDictionary[key]);
    }
    
    NSSet *aSet = [NSSet setWithObjects:@"1",@"2",@"3",@"4",@"5", nil];
    enumerator = [aSet objectEnumerator];
    id setObject;
    while ((setObject = [enumerator nextObject]) != nil) {
        //NSLog(@"%@",setObject);
    }
    
    //------------------------快速遍历
    for (id object1 in array) {
        //NSLog(@"%@",object1);
    }
    for (id key in aDictionary) {
        id value = aDictionary[key];
        //NSLog(@"%@%@",key,value);
    }
    
    //-------------------block遍历
    [array enumerateObjectsWithOptions:NSEnumerationConcurrent usingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        NSLog(@"%@",obj);
    }];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
