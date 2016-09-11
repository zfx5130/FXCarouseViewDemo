//
//  TestCollectionViewCell.h
//  FXCarouseViewDemo
//
//  Created by 赵富星 on 16/9/12.
//  Copyright © 2016年 thomas. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TestCollectionViewCell : UICollectionViewCell

@property (weak, nonatomic) IBOutlet UIView *fourView;

@property (weak, nonatomic) IBOutlet UIView *oneView;
@property (weak, nonatomic) IBOutlet UIView *threeView;

@property (nonatomic, strong) id object;

@end
