//
//  QRUtil.h
//  QRWeiXinDemo
//
//  Created by lovelydd on 15/10/9.
//  Copyright (c) 2015年 lovelydd. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface QRUtil : NSObject

+ (CGRect)screenBounds;

+ (AVCaptureVideoOrientation) videoOrientationFromCurrentDeviceOrientation;
@end
