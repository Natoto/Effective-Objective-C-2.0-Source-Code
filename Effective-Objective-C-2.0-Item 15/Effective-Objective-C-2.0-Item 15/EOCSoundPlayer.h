//
//  EOCSoundPlayer.h
//  Effective-Objective-C-2.0-Item 15
//
//  Created by maiyun on 15/6/8.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import <Foundation/Foundation.h>

@class EOCSoundPlayer;

@protocol EOCSoundPlayerDelegate <NSObject>

-(void)soundPlayerDidFinish:(EOCSoundPlayer *)player;

@end


@interface EOCSoundPlayer : NSObject
@property(nonatomic,weak) id <EOCSoundPlayerDelegate> delegate;
-(id)initWithURL:(NSURL *)url;
-(void)playSound;
@end
