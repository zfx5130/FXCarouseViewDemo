//
//  FourImageView.m
//  FXCarouseViewDemo
//
//  Created by 赵富星 on 16/9/11.
//  Copyright © 2016年 thomas. All rights reserved.
//

#import "FourImageView.h"

@implementation FourImageView

#pragma mark - life cycle

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [[NSBundle mainBundle] loadNibNamed:NSStringFromClass([self class])
                                      owner:self
                                    options:nil];
        self.aView.frame = frame;
        [self addSubview:self.aView];
    }
    return self;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    self.aView.frame = self.frame;
}

@end
