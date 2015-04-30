//
//  QRView.h
//  QRWeiXinDemo
//
//  Created by lovelydd on 15/4/25.
//  Copyright (c) 2015年 lovelydd. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "QRMenu.h"

@protocol QRViewDelegate <NSObject>

-(void)scanTypeConfig:(QRItem *)item;

@end
@interface QRView : UIView


@property (nonatomic, weak) id<QRViewDelegate> delegate;
/**
 *  透明的区域
 */
@property (nonatomic, assign) CGSize transparentArea;
@end
