//
//  QRView.h
//  QRWeiXinDemo
//
//  Created by lovelydd on 15/4/25.
//  Copyright (c) 2015年 lovelydd. All rights reserved.
//

#import <UIKit/UIKit.h>

static NSTimeInterval kQrLineanimateDuration = 0.02;

@interface QRView : UIView


/**
 *  透明的区域
 */
@property (nonatomic, assign) CGSize transparentArea;
@end
