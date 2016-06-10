//
//  DDQRCodeViewController.m
//  DDQRCode
//
//  Created by meitu on 16/6/10.
//  Copyright © 2016年 lcd. All rights reserved.
//

#import "DDQRCodeViewController.h"
#import <AVFoundation/AVFoundation.h>

@interface DDQRCodeViewController ()

@property (strong, nonatomic) AVCaptureDevice * device;
@property (strong, nonatomic) AVCaptureDeviceInput * input;
@property (strong, nonatomic) AVCaptureMetadataOutput * output;
@property (strong, nonatomic) AVCaptureSession * session;
@property (strong, nonatomic) AVCaptureVideoPreviewLayer * preview;

@property (nonatomic, strong) UIButton *backBtn;

//@property (nonatomic, strong) QRView *qrView;

@property (nonatomic, copy) ScanCompleteBlock scanCompleteBlock;

@property (nonatomic, copy, readwrite) NSString *urlString;

@end

@implementation DDQRCodeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
