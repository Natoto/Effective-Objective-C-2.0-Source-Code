//
//  NSString+ABC_HTTP.h
//  Effective-Objective-C-2.0-Item 25
//
//  Created by 黄成都 on 15/6/9.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (ABC_HTTP)
-(NSString *)abc_urlEncodedString;
-(NSString *)abc_urlDecodedString;
@end
