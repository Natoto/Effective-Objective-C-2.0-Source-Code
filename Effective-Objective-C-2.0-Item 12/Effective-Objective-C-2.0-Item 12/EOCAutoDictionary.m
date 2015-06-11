//
//  EOCAutoDictionary.m
//  Effective-Objective-C-2.0-Item 12
//
//  Created by 黄成都 on 15/6/11.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import "EOCAutoDictionary.h"
#import <objc/runtime.h>






@interface EOCAutoDictionary()
@property(nonatomic,strong) NSMutableDictionary *backingStore;
@end

@implementation EOCAutoDictionary
@dynamic string,number,date,opaqueDoject;

-(instancetype)init{
    if (self = [super init]) {
        _backingStore = [NSMutableDictionary new];
    }
    return self;
}


+(BOOL)resolveInstanceMethod:(SEL)selector{
    NSString *selectorString = NSStringFromSelector(selector);
    if ([selectorString hasPrefix:@"set"]) {
        class_addMethod(self, selector, (IMP)autoDictionarySetter, "v@:@");
    }else{
        class_addMethod(self, selector, (IMP)autoDictionaryGetter, "@@:");
    }
    return YES;
}

void autoDictionarySetter(id self, SEL _cmd, id value){
    EOCAutoDictionary *typeSelf = (EOCAutoDictionary *)self;
    NSMutableDictionary *backingStore = typeSelf.backingStore;
    NSString *selectorString = NSStringFromSelector(_cmd);
    NSMutableString *key = [selectorString mutableCopy];
    [key deleteCharactersInRange:NSMakeRange(key.length - 1,1)];
    
    [key deleteCharactersInRange:NSMakeRange(0, 3)];
    
    NSString *lowercaseFirstChar = [[key substringToIndex:1] lowercaseString];
    [key replaceCharactersInRange:NSMakeRange(0, 1) withString:lowercaseFirstChar];
    if (value) {
        [backingStore setObject:value forKey:key];
    }else{
        [backingStore removeObjectForKey:key];
    }
}


id autoDictionaryGetter(id self,SEL _cmd){
    EOCAutoDictionary *typedSelf = (EOCAutoDictionary *)self;
    NSMutableDictionary *backingStore = typedSelf.backingStore;
    NSString *key = NSStringFromSelector(_cmd);
    return [backingStore objectForKey:key];
    
}


@end





