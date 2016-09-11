//
//  ViewController.m
//  FXCarouseViewDemo
//
//  Created by 赵富星 on 16/9/11.
//  Copyright © 2016年 thomas. All rights reserved.
//

#import "ViewController.h"
#import "XRCarouselView.h"
#import "Demo2ViewController.h"

@interface ViewController ()
<XRCarouselViewDelegate>

@property (nonatomic, strong) XRCarouselView *carouselView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"轮播Demo";
    NSArray *arr = @[
                     @"http://pic39.nipic.com/20140226/18071023_162553457000_2.jpg",//网络图片
                     [UIImage imageNamed:@"1.jpg"],//本地图片，传image，不能传名称
                     @"http://photo.l99.com/source/11/1330351552722_cxn26e.gif",//网络gif图片
                     gifImageNamed(@"2.gif")//本地gif使用gifImageNamed(name)函数创建
                     ];
    
    NSArray *describeArray = @[@"网络图片", @"本地图片", @"网络动态图", @"本地动态图"];
    
    /**
     *  通过代码创建
     */
    self.carouselView =
    [[XRCarouselView alloc] initWithFrame:CGRectMake(0, 100, [UIScreen mainScreen].bounds.size.width, 180)];
    
    
    //设置占位图片,须在设置图片数组之前设置,不设置则为默认占位图
    _carouselView.placeholderImage = [UIImage imageNamed:@"placeholderImage.jpg"];
    
    //设置图片数组及图片描述文字
    _carouselView.imageArray = arr;
    _carouselView.describeArray = describeArray;
    
    //用代理处理图片点击
    _carouselView.delegate = self;
    
    //设置每张图片的停留时间，默认值为5s，最少为2s
    _carouselView.time = 2;
    
    //设置分页控件的图片,不设置则为系统默认
    [_carouselView setPageImage:[UIImage imageNamed:@"other"] andCurrentPageImage:[UIImage imageNamed:@"current"]];
    
    //设置分页控件的位置，默认为PositionBottomCenter
    _carouselView.pagePosition = PositionBottomRight;
    
    /**
     *  修改图片描述控件的外观，不需要修改的传nil
     *
     *  参数一 字体颜色，默认为白色
     *  参数二 字体，默认为13号字体
     *  参数三 背景颜色，默认为黑色半透明
     */
    UIColor *bgColor = [[UIColor blueColor] colorWithAlphaComponent:0.5];
    UIFont *font = [UIFont systemFontOfSize:15];
    UIColor *textColor = [UIColor greenColor];
    [_carouselView setDescribeTextColor:textColor font:font bgColor:bgColor];
    
    [self.view addSubview:_carouselView];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


#pragma mark XRCarouselViewDelegate
- (void)carouselView:(XRCarouselView *)carouselView clickImageAtIndex:(NSInteger)index {
    NSLog(@"点击了第%ld张图片", index);
}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    //清除缓存
    [XRCarouselView clearDiskCache];
    
}

- (IBAction)swipButton:(UIButton *)sender {
    Demo2ViewController * controller = [[Demo2ViewController alloc] init];
    [self.navigationController pushViewController:controller animated:YES];
    
}


@end
