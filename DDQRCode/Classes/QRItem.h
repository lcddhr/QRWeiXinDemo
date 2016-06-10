//
//  QRItem.h
//  QRWeiXinDemo
//
//  Created by lovelydd on 15/4/30.
//  Copyright (c) 2015年 lovelydd. All rights reserved.
//

#import <UIKit/UIKit.h>


typedef NS_ENUM(NSUInteger, QRItemType) {
    QRItemTypeQRCode = 0,
    QRItemTypeOther,
};


@interface QRItem : UIButton

@property (nonatomic, assign) QRItemType type;

- (instancetype)initWithFrame:(CGRect)frame
                       titile:(NSString *)titile;
@end
