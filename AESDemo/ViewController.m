//
//  ViewController.m
//  AESDemo
//
//  Created by Yioks-Mac on 17/3/6.
//  Copyright © 2017年 Yioks-Mac. All rights reserved.
//

#import "ViewController.h"
#import "Base64Method.h"
#import "NSString+AES256.h"
//#import "RSA.h"

#import "RSAEncryptor.h"
#import "RSAUtil.h"

@interface ViewController ()


@property (weak, nonatomic) IBOutlet UITextField *textfield;

@property (weak, nonatomic) IBOutlet UILabel *encryptLabel;

@property (weak, nonatomic) IBOutlet UILabel *decodeLabel;

@property (nonatomic, copy) NSString *pubkey;
@property (nonatomic, copy) NSString *privkey;

@property (nonatomic, strong) RSAEncryptor *rsa;




@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.pubkey = @"MFwwDQYJKoZIhvcNAQEBBQADSwAwSAJBAJoNNFarIfH7yPwLiZM4oCXjh5RrxDzUtHCapESsHbhie/1Q9cNURxHJUC7iPw5h6QSgpbv5KeL6NcU7du3wMjcCAwEAAQ==";
    self.privkey = @"MIIBUwIBADANBgkqhkiG9w0BAQEFAASCAT0wggE5AgEAAkEAmg00Vqsh8fvI/AuJkzigJeOHlGvEPNS0cJqkRKwduGJ7/VD1w1RHEclQLuI/DmHpBKClu/kp4vo1xTt27fAyNwIDAQABAkAk71+KHBPScdzZWWbNznjPPMNH+aKeNx1gFiOmd2HU0B/az7dskcdBaqfWM9qJ+Qh5FtWymbRc26raMPRTseKRAiEA5PPOBvD0ndtsCAarfQR9UFMk7xz4/VVhiVlRJs9y3vkCIQCsQC3NViiH6GhOvdB2k2gNIcfZuUowtvpqV6732nt2rwIgJugrjdBqsVy1WhPQFpmptfm7IAs7YMmenpmYCdFdAvkCIHWieuUxgwqWAK5N2VExiCz3tfmOHgm43LnFWhuwnQLHAiALoxkBoZPXy3wPzTkA+4pbGdUN0AopbasRm2psirBhkQ==";
    self.rsa = [[RSAEncryptor alloc]init];
}

- (IBAction)calculate:(id)sender {
    
//    self.encryptLabel.text = [Base64Method encryptString:self.textfield.text];
//    self.decodeLabel.text = [Base64Method decodeString:self.encryptLabel.text];
//    
//    self.encryptLabel.text = [self.textfield.text aes256_encrypt:@"abc"];
//    self.decodeLabel.text = [self.encryptLabel.text aes256_decrypt:@"abc"];
    
//    self.encryptLabel.text = [RSA encryptString:self.textfield.text publicKey:self.pubkey];
//    self.decodeLabel.text = [RSA decryptString:self.encryptLabel.text privateKey:self.privkey];
    
//    //加密，利用openssl生成公钥和私钥文件进行加密
//    //NSLog(@"encryptor using rsa");
//    NSString *publicKeyPath = [[NSBundle mainBundle] pathForResource:@"public_key" ofType:@"der"];
//    NSLog(@"public key: %@", publicKeyPath);
//    [self.rsa loadPublicKeyFromFile:publicKeyPath];
//    
//    NSString *enc = [self.rsa rsaEncryptString:self.textfield.text];
//    self.encryptLabel.text = enc;
//    
//    //解密
//    [self.rsa loadPrivateKeyFromFile:[[NSBundle mainBundle] pathForResource:@"private_key" ofType:@"p12"] password:@"123456"];
//    self.decodeLabel.text = [self.rsa rsaDecryptString:self.encryptLabel.text];
    
    //RSA加密，利用公钥和私钥字符串进行加解密
    //！！！！！！切记，ios10以后要打开keyChain share，否则无用。
    self.encryptLabel.text = [RSAUtil encryptString:self.textfield.text publicKey:self.pubkey];
    self.decodeLabel.text = [RSAUtil decryptString:self.encryptLabel.text privateKey:self.privkey];
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
