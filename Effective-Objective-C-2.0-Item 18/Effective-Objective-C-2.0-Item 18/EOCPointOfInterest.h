//
//  EOCPointOfInterest.h
//  Effective-Objective-C-2.0-Item 18
//
//  Created by maiyun on 15/6/8.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface EOCPointOfInterest : NSObject
@property(nonatomic,copy,readonly)NSString *identifier;
@property(nonatomic,copy,readonly)NSString *title;
@property(nonatomic,assign,readonly)float latitude;
@property(nonatomic,assign,readonly)float longitude;
-(id)initWithIdentifier:(NSString *)identifier title:(NSString *)title latitude:(float)latitude longitude:(float)longitude;
@end
