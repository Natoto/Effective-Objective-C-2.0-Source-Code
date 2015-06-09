//
//  EOCNetworkFetcher.h
//  Effective-Objective-C-2.0-Item 23
//
//  Created by maiyun on 15/6/9.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import <Foundation/Foundation.h>

@class EOCNetworkFetcher;

@protocol EOCNetworkFetcherDelegate <NSObject>

-(void)networkFetcher:(EOCNetworkFetcher *)fetcher didReceivedData:(NSData *)data;
-(void)networkFetcher:(EOCNetworkFetcher *)fetcher didFailWithError:(NSError *)error;
-(void)networkFetcher:(EOCNetworkFetcher *)fetcher didUpdateProgressTo:(float)progress;
@end

@interface EOCNetworkFetcher : NSObject
@property(nonatomic,weak) id<EOCNetworkFetcherDelegate> delegate;
@end
