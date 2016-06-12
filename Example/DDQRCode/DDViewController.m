//
//  DDViewController.m
//  DDQRCode
//
//  Created by lcd on 06/10/2016.
//  Copyright (c) 2016 lcd. All rights reserved.
//

#import "DDViewController.h"
#import <AVFoundation/AVFoundation.h>
#import "DDQRCodeViewController.h"
#import "DDPhotoQRCodeViewController.h"


@interface DDViewController ()

@end

@implementation DDViewController

-(void)viewDidLoad {
    
    [super viewDidLoad];
    
}

- (IBAction)openQR:(id)sender {
    
    if ([self validateCamera] && [self canUseCamera]) {
        
        [self showQRViewController];
        
    } else {
        
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"提示" message:@"没有摄像头或摄像头不可用" delegate:self cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
        [alertView show];
    }
}
- (IBAction)readPhotoQR:(id)sender {
    
    if ([[UIDevice currentDevice].systemVersion floatValue] < 8.0) {
        
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"提示" message:@"这个功能必须8.0系统之后才能使用" delegate:self cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
        [alertView show];
        return;
    }
    
    [self showPhotoQRViewController];
}

-(BOOL)canUseCamera {
    
    NSString *mediaType = AVMediaTypeVideo;
    AVAuthorizationStatus authStatus = [AVCaptureDevice authorizationStatusForMediaType:mediaType];
    if(authStatus == AVAuthorizationStatusRestricted || authStatus == AVAuthorizationStatusDenied){
        
        NSLog(@"相机权限受限");
        
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"提示" message:@"请在设备的设置-隐私-相机中允许访问相机。" delegate:self cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
        [alertView show];
        return NO;
    }
    
    return YES;
}

-(BOOL)validateCamera {
    
    return [UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera] &&
    [UIImagePickerController isCameraDeviceAvailable:UIImagePickerControllerCameraDeviceRear];
}


- (void)showQRViewController {
    
    DDQRCodeViewController *vc = [[DDQRCodeViewController alloc] initWithScanCompleteHandler:^(NSString *url) {
    }];
    
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)showPhotoQRViewController {
    
    DDPhotoQRCodeViewController *vc = [[DDPhotoQRCodeViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

@end
