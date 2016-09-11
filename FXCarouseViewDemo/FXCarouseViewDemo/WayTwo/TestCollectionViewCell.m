//
//  TestCollectionViewCell.m
//  FXCarouseViewDemo
//
//  Created by 赵富星 on 16/9/12.
//  Copyright © 2016年 thomas. All rights reserved.
//

#import "TestCollectionViewCell.h"


@implementation TestCollectionViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
}

- (void)setObject:(id)object {
    _object = object;
    [self renderViewWithObject:object];
}
- (void)renderViewWithObject:(id)object {
    NSLog(@":::object:::::%@", object);
    
    if ([object isKindOfClass:[NSString class]]) {
        self.oneView.hidden = NO;
        self.fourView.hidden = !self.oneView.hidden;
        self.threeView.hidden = !self.oneView.hidden;
    }  else if ([object isKindOfClass:[NSArray class]]) {
        NSArray *images = (NSArray *)object;
        if (images.count == 3) {
            self.threeView.hidden = NO;
            self.fourView.hidden = !self.threeView.hidden;
            self.oneView.hidden = !self.threeView.hidden;
        } else if (images.count >= 4) {
            self.fourView.hidden = NO;
            self.threeView.hidden = !self.fourView.hidden;
            self.oneView.hidden = !self.fourView.hidden;
        } else if (images.count < 3) {
            self.oneView.hidden = NO;
            self.fourView.hidden = !self.oneView.hidden;
            self.threeView.hidden = !self.oneView.hidden;
        }
    }
}

@end
