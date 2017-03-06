//
//  Base64Method.m
//  AESDemo
//
//  Created by Yioks-Mac on 17/3/6.
//  Copyright © 2017年 Yioks-Mac. All rights reserved.
//

#import "Base64Method.h"

@implementation Base64Method

+ (NSString *)encryptString:(NSString *)str{
    NSData *data = [str dataUsingEncoding:NSUTF8StringEncoding];
    return [data base64EncodedStringWithOptions:0];
}

+ (NSString *)decodeString:(NSString *) str{
    NSData *data = [[NSData alloc]initWithBase64EncodedString:str options:0];
    return [[NSString alloc]initWithData:data encoding:NSUTF8StringEncoding];
}

@end
