//
//  EOCRectangle.h
//  Effective-Objective-C-2.0-Item 16
//
//  Created by maiyun on 15/6/8.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface EOCRectangle : NSObject<NSCoding>
@property(nonatomic,assign,readonly)float width;
@property(nonatomic,assign,readonly)float height;
-(id)initWithWidth:(float)width addHeight:(float)height;
@end
