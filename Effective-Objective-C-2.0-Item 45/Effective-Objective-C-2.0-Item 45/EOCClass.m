//
//  EOCClass.m
//  
//
//  Created by maiyun on 15/6/11.
//
//

#import "EOCClass.h"

@implementation EOCClass
+(id)sharedInstance{
    static EOCClass *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[self alloc]init];
    });
    return sharedInstance;
}
@end
