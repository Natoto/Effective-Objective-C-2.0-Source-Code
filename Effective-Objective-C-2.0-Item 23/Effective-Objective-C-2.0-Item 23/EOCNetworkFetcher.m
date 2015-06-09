//
//  EOCNetworkFetcher.m
//  Effective-Objective-C-2.0-Item 23
//
//  Created by maiyun on 15/6/9.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import "EOCNetworkFetcher.h"

@interface EOCNetworkFetcher ()
{
    struct{
        unsigned int didReceiveData : 1;
        unsigned int didFailWithError : 1;
        unsigned int didUpdateProgressTo : 1;
    }_deletateFlages;
}
@end

@implementation EOCNetworkFetcher

-(void)setDelegate:(id<EOCNetworkFetcherDelegate>)delegate{
    _deletateFlages.didFailWithError = [self.delegate respondsToSelector:@selector(networkFetcher:didFailWithError:)];
    _deletateFlages.didReceiveData = [self.delegate respondsToSelector:@selector(networkFetcher:didReceivedData:)];
    _deletateFlages.didUpdateProgressTo = [self.delegate respondsToSelector:@selector(networkFetcher:didUpdateProgressTo:)];

    
}

-(void)xx{
//    if ([self.delegate respondsToSelector:@selector(networkFetcher:didFailWithError:)]) {
//        [self.delegate networkFetcher:self didFailWithError:nil];
//    }
    
    if (_deletateFlages.didReceiveData) {
        [_delegate networkFetcher:self didReceivedData:nil];
    }
}
@end
