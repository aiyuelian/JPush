//
//  ServerConnect.m
//  ValentinesAppDemo
//
//  Created by ShockingLee on 13-8-15.
//  Copyright (c) 2013年 zgw. All rights reserved.
//

#import "ServerConnect.h"

@implementation ServerConnect
-(id)initWithRevceiveDataDelegate:(id)aDelegate
{
    self = [super init];
    if (self) {
        mPack = [[SendPackage alloc]init];
        mRequest = [[NSMutableURLRequest alloc]init];
        mRecieve = [[NSMutableData alloc]init];
        mDelegate = aDelegate;
    }
    return self;
}
-(BOOL)setURlToRequest:(NSString *)aStrURL
{
    mURL = [[NSURL alloc]initWithString:aStrURL];
    [mRequest setURL:mURL];
    return YES;
}
-(BOOL)addObjectToSendAsValue:(NSString *)aStrValue andKey:(NSString *)aStrKey
{
    return [mPack addObjectToPackAsValue:aStrValue andKey:aStrKey];
}
-(BOOL)startRequest
{
    NSData *data = [[NSData alloc]initWithData:[mPack getSendData]];
    [mRequest setHTTPBody:data];
    [mRequest setHTTPMethod:@"POST"];
    [mRequest setValue:@"application/json" forHTTPHeaderField:@"Accept"];
    [mRequest setValue:@"application/json;encoding=utf-8" forHTTPHeaderField:@"Content-Type"];
    [[NSURLConnection connectionWithRequest:mRequest delegate:self] start];
    return YES;
}

@end