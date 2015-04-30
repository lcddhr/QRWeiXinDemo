//
//  QRMenu.h
//  QRWeiXinDemo
//
//  Created by lovelydd on 15/4/30.
//  Copyright (c) 2015年 lovelydd. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "QRItem.h"


typedef void(^QRMenuDidSelectedBlock)(QRItem *item);

@interface QRMenu : UIView

@property (nonatomic, copy) QRMenuDidSelectedBlock didSelectedBlock;

- (instancetype)initWithFrame:(CGRect)frame;
@end
