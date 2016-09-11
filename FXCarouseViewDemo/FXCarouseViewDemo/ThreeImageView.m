//
//  ThreeImageView.m
//  FXCarouseViewDemo
//
//  Created by 赵富星 on 16/9/11.
//  Copyright © 2016年 thomas. All rights reserved.
//

#import "ThreeImageView.h"

@implementation ThreeImageView

#pragma mark - life cycle

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [[NSBundle mainBundle] loadNibNamed:NSStringFromClass([self class])
                                      owner:self
                                    options:nil];
        self.view.frame = frame;
        [self addSubview:self.view];
    }
    return self;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    self.view.frame = self.frame;
}

@end
