//
//  EOCClass.h
//  
//
//  Created by maiyun on 15/6/11.
//
//

#import <Foundation/Foundation.h>

typedef void(^EOCNetworkFetcherCompletionHandler)(NSData *data);


@interface EOCNetworkFetcher : NSObject
-(id)initWithURL:(NSURL *)url;
-(void)startWithCompletionHandler:(EOCNetworkFetcherCompletionHandler)handler;
@end


@interface EOCClass : NSObject

@end
