//
//  ViewController.m
//  Effective-Objective-C-2.0-Item 49
//
//  Created by maiyun on 15/6/11.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import "ViewController.h"
#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>




@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    [self text1];
    
    
}


//foundation对象与corefoundation对象之间的转换。
-(void)text1{
    NSArray *firstArray = @[@1,@2,@3,@4,@5];
    //__bridge表示arc保留对array的拥有。所以cfarrayref用完以后就不用释放内存了。
    CFArrayRef firstCFArray = (__bridge CFArrayRef)firstArray;
    // NSLog(@"size of firstCFArray = %li",CFArrayGetCount(firstCFArray));
    
    //__bridge_retained表示arc不保留对array的拥有。所以cfarrayref用完以后就需要手动释放内存了。
    NSArray *firstArray1 = @[@1,@2,@3,@4,@6];
    CFArrayRef firstCFArrayRetain = (__bridge_retained  CFArrayRef)firstArray1;
    //NSLog(@"size of firstCFArrayRetain = %li",CFArrayGetCount(firstCFArrayRetain));
    //CFRelease(firstCFArrayRetain);
    
    //在转换为nsarray以后，就不用再CFRelease了。
    NSArray *secondArray = (__bridge_transfer NSArray *)firstCFArrayRetain;
    NSLog(@"%@",secondArray);
    NSLog(@"%p--%p--%p",secondArray,firstCFArrayRetain,firstArray);
}

//通过corefoundation创建不拷贝键的dictionary
const void* EOCRetainCallback(CFAllocatorRef allocator, const void *value){
    return CFRetain(value);
}

void EOCReleaseCallback(CFAllocatorRef allocator,const void *value){
    CFRelease(value);
}

CFDictionaryKeyCallBacks keyCallbacks = {
    0,
    EOCRetainCallback,
    EOCReleaseCallback,
    NULL,
    CFEqual,
    CFHash
};
CFDictionaryValueCallBacks valueCallbacks = {
    0,
    EOCRetainCallback,
    EOCReleaseCallback,
    NULL,
    CFEqual
};
//生成一个retain键和值得dictionary
-(void)test2{
    CFMutableDictionaryRef aCFDictionary = CFDictionaryCreateMutable(NULL, 0, &keyCallbacks, &valueCallbacks);
    NSMutableDictionary *anNSDictionary = (__bridge_transfer NSMutableDictionary *)aCFDictionary;
    
}


@end
