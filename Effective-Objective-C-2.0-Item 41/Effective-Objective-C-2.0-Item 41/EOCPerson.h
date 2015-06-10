//
//  EOCPerson.h
//  Effective-Objective-C-2.0-Item 41
//
//  Created by 黄成都 on 15/6/10.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface EOCPerson : NSObject
{
    dispatch_queue_t _syncQueue;
    dispatch_queue_t _currentQueue;
}
@property(nonatomic,copy)NSString *name;

@property(nonatomic,copy)NSString *age;
@end
