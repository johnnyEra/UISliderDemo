//
//  ViewController.m
//  UISliderDemo
//
//  Created by zhou on 13-12-6.
//  Copyright (c) 2013年 zhou. All rights reserved.
//

#import "ViewController.h"

#define WIDTH

@interface ViewController () {
    
    UISlider* slider_1;
    UILabel* valueLabel;
}

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    DLog();
	
    // 屏幕高度的几种情况
    CGFloat height_view = self.view.bounds.size.height;//548 视图未显现
    CGRect bounds_screen = [UIScreen mainScreen].bounds;//480 屏幕高度
    CGRect applicationFrame_scrren = [UIScreen mainScreen].applicationFrame;//460 应用可用屏幕高度
    NSLog(@"%f---%f---%f",height_view,bounds_screen.size.height,applicationFrame_scrren.size.height);
    
    DLog(@"hahahah");
    
    CGRect frame = CGRectMake(10, 360, 300, 23); // 滑动条默认高度23 pixels
    slider_1 = [[UISlider alloc]initWithFrame:frame];
    // 最小 最大 值
    slider_1.minimumValue = 0.0f;
    slider_1.maximumValue = 100.0f;
    // 当前值
    slider_1.value = 50.0f;
    // 连续
    slider_1.continuous = YES;
    // valueImage
    slider_1.minimumValueImage = [UIImage imageNamed:@"min_value"];
    slider_1.maximumValueImage = [UIImage imageNamed:@"max_value"];
    // 颜色
    slider_1.minimumTrackTintColor = [UIColor purpleColor];
    slider_1.maximumTrackTintColor = [UIColor redColor];
    slider_1.thumbTintColor = [UIColor blueColor];

    [self.view addSubview:slider_1];
    [slider_1 addTarget:self action:@selector(sliderValueChanged:) forControlEvents:UIControlEventValueChanged];
    
    // UILabel
    frame = CGRectMake(120, 200, 80, 40);
    valueLabel = [[UILabel alloc]initWithFrame:frame];
    valueLabel.text = @"50";
    [self.view addSubview:valueLabel];
}

- (void)sliderValueChanged:(id)sender {
    
    valueLabel.text = [NSString stringWithFormat:@"%d",(int)slider_1.value];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
