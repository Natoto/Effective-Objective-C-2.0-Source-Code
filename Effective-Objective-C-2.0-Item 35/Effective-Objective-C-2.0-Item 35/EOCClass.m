//
//  EOCClass.m
//  
//
//  Created by maiyun on 15/6/10.
//
//

#import "EOCClass.h"
#import <objc/runtime.h>

@implementation EOCClass
-(void)printClassInfo:(id)obj{
    Class cls = object_getClass(obj);
    Class superCls = class_getSuperclass(cls);
    NSLog(@"=== %s : %s===",class_getName(cls),class_getName(superCls));
}
-(void)dealloc{
    NSLog(@"删除了");
}
@end
