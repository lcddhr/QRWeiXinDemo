//
//  QRItem.m
//  QRWeiXinDemo
//
//  Created by lovelydd on 15/4/30.
//  Copyright (c) 2015年 lovelydd. All rights reserved.
//

#import "QRItem.h"
#import <objc/runtime.h>

@implementation QRItem

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/


- (instancetype)initWithFrame:(CGRect)frame
                       titile:(NSString *)titile{
    
    self =  [QRItem buttonWithType:UIButtonTypeSystem];
    if (self) {
        
        [self setTitle:titile forState:UIControlStateNormal];
        self.frame = frame;
    }
    return self;
}
@end
