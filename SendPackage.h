//
//  SendPackage.h
//  ValentinesAppDemo
//
//  Created by ShockingLee on 13-8-15.
//  Copyright (c) 2013年 chenyue. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SBJson.h"

@interface SendPackage : NSObject
{
    NSMutableDictionary *mDicPack;
    NSDictionary *mRootDicPack;
    NSData *mDataPack;
}

-(id)init;
-(BOOL)addObjectToPackAsValue:(NSString *)aStrValue andKey:(NSString *)aStrKey;
-(NSData *)getSendData;
@end
