//
//  QRMenu.m
//  QRWeiXinDemo
//
//  Created by lovelydd on 15/4/30.
//  Copyright (c) 2015年 lovelydd. All rights reserved.
//

#import "QRMenu.h"

@implementation QRMenu

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
     
        [self setupQRItem];
        
    }
    
    return self;
}

- (void)setupQRItem {
    
    QRItem *qrItem = [[QRItem alloc] initWithFrame:(CGRect){
        .origin.x = 0,
        .origin.y = 0,
        .size.width = self.bounds.size.width / 2,
        .size.height = self.bounds.size.height
    } titile:@"二维码扫描"];
    qrItem.type = QRItemTypeQRCode;
    [self addSubview:qrItem];
    
    QRItem *otherItem = [[QRItem alloc] initWithFrame: (CGRect){
        
        .origin.x = self.bounds.size.width / 2,
        .origin.y = 0,
        .size.width = self.bounds.size.width / 2,
        .size.height = self.bounds.size.height
    } titile:@"条形码扫描"];
    otherItem.type = QRItemTypeOther;
    [self addSubview:otherItem];
    
    [qrItem addTarget:self action:@selector(qrScan:) forControlEvents:UIControlEventTouchUpInside];
    [otherItem addTarget:self action:@selector(qrScan:) forControlEvents:UIControlEventTouchUpInside];
    
}


#pragma mark - Action

- (void)qrScan:(QRItem *)qrItem {
    
    if (self.didSelectedBlock) {
        
        self.didSelectedBlock(qrItem);
    }
}



@end
