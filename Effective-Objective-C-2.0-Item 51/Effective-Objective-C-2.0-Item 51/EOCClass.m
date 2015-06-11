//
//  EOCClass.m
//  
//
//  Created by maiyun on 15/6/11.
//
//

#import "EOCClass.h"

static const int kInterval = 10;
static NSMutableArray *kSomeObjects;

@implementation EOCClass

+(void)initialize{
    if (self == [EOCClass class]) {
        kSomeObjects = [NSMutableArray array];
    }
}


-(instancetype)init{
    self = [super init];
    if (self) {
        if (kSomeObjects != nil) {
            NSLog(@"哈哈哈哈哈");
        }
    }
    return self;
}

@end
