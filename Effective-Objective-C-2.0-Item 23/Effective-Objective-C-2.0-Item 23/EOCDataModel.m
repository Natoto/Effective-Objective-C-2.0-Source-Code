//
//  EOCDataModel.m
//  Effective-Objective-C-2.0-Item 23
//
//  Created by maiyun on 15/6/9.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import "EOCDataModel.h"
#import "EOCNetworkFetcher.h"
@interface EOCDataModel() <EOCNetworkFetcherDelegate>

@end

@implementation EOCDataModel
-(void)doSomeThing{
    EOCNetworkFetcher *fetcher = [[EOCNetworkFetcher alloc]init];
    fetcher.delegate = self;
    
}

#pragma mark EOCNetworkFetcherDelegate代理方法
-(void)networkFetcher:(EOCNetworkFetcher *)fetcher didReceivedData:(NSData *)data{

}
-(void)networkFetcher:(EOCNetworkFetcher *)fetcher didFailWithError:(NSError *)error{
    
}

-(void)networkFetcher:(EOCNetworkFetcher *)fetcher didUpdateProgressTo:(float)progress{
    
}

@end
