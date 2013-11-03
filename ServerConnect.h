//
//  ServerConnect.h
//  ValentinesAppDemo
//
//  Created by ShockingLee on 13-8-15.
//  Copyright (c) 2013年 chenyue. All rights reserved.
//


#define SERVERIP   @"192.168.1.102"
#import "SendPackage.h"

@protocol ServerConnectDelegate <NSObject>

-(void)ReceiveResponsData:(NSData *)aDataRespons;
-(void)FailToConnectToServer:(NSError *)aError;

@end

@interface ServerConnect : NSObject <NSURLConnectionDelegate>
{
    NSMutableURLRequest * mRequest;
    id <ServerConnectDelegate> mDelegate;
    NSURL *mURL;
    SendPackage *mPack;
    NSMutableData *mRecieve;
}

@end
