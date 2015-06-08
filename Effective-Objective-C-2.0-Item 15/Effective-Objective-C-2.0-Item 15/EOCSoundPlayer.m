//
//  EOCSoundPlayer.m
//  Effective-Objective-C-2.0-Item 15
//
//  Created by maiyun on 15/6/8.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import "EOCSoundPlayer.h"
#import <AudioToolbox/AudioToolbox.h>

void completion(SystemSoundID ssID,void *clientData){
    EOCSoundPlayer *player = (__bridge EOCSoundPlayer *)clientData;
    if ([player.delegate respondsToSelector:@selector(soundPlayerDidFinish:)]) {
        [player.delegate soundPlayerDidFinish:player];
    }
}

@implementation EOCSoundPlayer{
    SystemSoundID _systemSoundID;
}
-(id)initWithURL:(NSURL *)url{
    if (self == [super init]) {
        AudioServicesCreateSystemSoundID((__bridge CFURLRef)url, &_systemSoundID);
    }
    return self;
}

-(void)playSound{
    AudioServicesAddSystemSoundCompletion(_systemSoundID, NULL, NULL, completion, (__bridge void *)self);
}

-(void)dealloc{
    AudioServicesDisposeSystemSoundID(_systemSoundID);
}

@end
