//
//  SendPackage.m
//  ValentinesAppDemo
//
//  Created by ShockingLee on 13-8-15.
//  Copyright (c) 2013年 chenyue. All rights reserved.
//

#import "SendPackage.h"

@implementation SendPackage
-(id)init
{
    self = [super init];
    if (self) {
        mDicPack = [[NSMutableDictionary alloc]init];
    }
    return self;
}
-(BOOL)addObjectToPackAsValue:(NSString *)aStrValue andKey:(NSString *)aStrKey
{
    if(!aStrValue) return NO;
    [mDicPack setObject:aStrValue forKey:aStrKey];
    return YES;
}
-(NSData *)getSendData
{
    if ([self packDataSend])
        return mDataPack;
    return NO;
}

-(BOOL)packDataSend
{
    mRootDicPack = [[NSDictionary alloc]initWithObjectsAndKeys:mDicPack,@"post_data", nil];
    SBJsonWriter *writer = [[SBJsonWriter alloc]init];
    mDataPack = [writer dataWithObject:mRootDicPack];
    return YES;
}
@end
