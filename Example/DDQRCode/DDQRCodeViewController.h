//
//  DDQRCodeViewController.h
//  DDQRCode
//
//  Created by meitu on 16/6/10.
//  Copyright © 2016年 lcd. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^ScanCompleteBlock)(NSString *url);

@interface DDQRCodeViewController : UIViewController

@property (nonatomic, copy, readonly) NSString *urlString;

- (instancetype)initWithScanCompleteHandler:(ScanCompleteBlock)scanCompleteBlock;

- (void)stopRunning;


@end
