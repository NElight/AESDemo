//
//  NSString+AES256.h
//  AESDemo
//
//  Created by Yioks-Mac on 17/3/6.
//  Copyright © 2017年 Yioks-Mac. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (AES256)

-(NSString *) aes256_encrypt:(NSString *)key;
-(NSString *) aes256_decrypt:(NSString *)key;

@end
