//
//  QRViewController.h
//  QRWeiXinDemo
//
//  Created by lovelydd on 15/4/25.
//  Copyright (c) 2015年 lovelydd. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^ScanCompleteBlock)(NSString *url);

@interface QRViewController : UIViewController

@property (nonatomic, copy, readonly) NSString *urlString;

- (instancetype)initWithScanCompleteHandler:(ScanCompleteBlock)scanCompleteBlock;

- (void)stopRunning;
@end
