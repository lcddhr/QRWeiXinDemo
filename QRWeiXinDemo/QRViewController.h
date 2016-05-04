//
//  QRViewController.h
//  QRWeiXinDemo
//
//  Created by lovelydd on 15/4/25.
//  Copyright (c) 2015年 lovelydd. All rights reserved.
//

#import <UIKit/UIKit.h>

<<<<<<< HEAD
typedef void(^ScanCompleteBlock)(NSString *url);
=======
typedef void(^QRUrlBlock)(NSString *url);
>>>>>>> master

@interface QRViewController : UIViewController

@property (nonatomic, copy, readonly) NSString *urlString;

- (instancetype)initWithScanCompleteHandler:(ScanCompleteBlock)scanCompleteBlock;

<<<<<<< HEAD
- (void)stopRunning;
=======

>>>>>>> master
@end
