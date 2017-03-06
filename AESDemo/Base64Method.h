//
//  Base64Method.h
//  AESDemo
//
//  Created by Yioks-Mac on 17/3/6.
//  Copyright © 2017年 Yioks-Mac. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Base64Method : NSObject

+ (NSString *)encryptString:(NSString *)str;

+ (NSString *)decodeString:(NSString *) str;

@end
