//
//  EOCClass.m
//  
//
//  Created by maiyun on 15/6/11.
//
//

#import "EOCClass.h"

@interface EOCClass ()<NSDiscardableContent>

@end

@implementation EOCClass
{
    NSCache *_cache;
}
- (instancetype)init
{
    self = [super init];
    if (self) {
        _cache = [NSCache new];
        _cache.countLimit = 100;
        _cache.evictsObjectsWithDiscardedContent = YES;
        _cache.totalCostLimit = 5*1024*1024;
    }

    return self;
}

-(void)downloadDataForURL:(NSURL *)url{
   // NSData *cacheData = [_cache objectForKey:url];
    NSPurgeableData *cacheData = [_cache objectForKey:url];
    if (cacheData) {
        [cacheData beginContentAccess];
        [self useData:cacheData];
        [cacheData endContentAccess];
    }else{
        EOCNetworkFetcher *fetcher = [[EOCNetworkFetcher alloc]initWithURL:url];
        [fetcher startWithCompletionHandler:^(NSData *data) {
            
            NSPurgeableData *purgeableData = [NSPurgeableData dataWithData:data];
            [_cache setObject:purgeableData forKey:url   cost:purgeableData.length];
            //[_cache setObject:data forKey:url cost:data.length];
            [self useData:data];
            
            [purgeableData endContentAccess];
        }];
    }
}
-(void)useData:(NSData *)data{

}
@end
