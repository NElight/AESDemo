//
//  NSData+AES256.h
//  AESDemo
//
//  Created by Yioks-Mac on 17/3/6.
//  Copyright © 2017年 Yioks-Mac. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CommonCrypto/CommonDigest.h>
#import <CommonCrypto/CommonCryptor.h>

@interface NSData (AES256)

- (NSData *)aes256_encrypt:(NSString *)key;
- (NSData *)ace256_decrypt:(NSString *)key;

@end
