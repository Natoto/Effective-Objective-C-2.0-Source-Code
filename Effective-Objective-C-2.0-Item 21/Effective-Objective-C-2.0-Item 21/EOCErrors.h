//
//  EOCErrors.h
//  Effective-Objective-C-2.0-Item 21
//
//  Created by maiyun on 15/6/8.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import <Foundation/Foundation.h>

extern NSString *const EOCErrorDomain;
typedef NS_ENUM(NSUInteger, EOCError){
    EOCErrorUnknown = -1,
    EOCErrorInternalInconsistency = 100,
    EOCErrorGeneralFault = 105,
    EOCErrorBadInput  = 500
};


@interface EOCErrors : NSObject
-(BOOL)doSomething:(NSError **)error;
@end
