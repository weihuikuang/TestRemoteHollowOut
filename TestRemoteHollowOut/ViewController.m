//
//  ViewController.m
//  TestRemoteHollowOut
//
//  Created by Handbbc on 2018/5/9.
//  Copyright © 2018年 shiDong. All rights reserved.
//

#import "ViewController.h"

#define SCREEN_WIDTH [UIScreen mainScreen].bounds.size.width
#define SCREEN_HEIGHT [UIScreen mainScreen].bounds.size.height

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor cyanColor];
    UIImageView *imageView =[[UIImageView alloc] initWithFrame:CGRectMake(0, 64, SCREEN_WIDTH, SCREEN_HEIGHT)];
    imageView.image = [UIImage imageNamed:@"icon"];
    [imageView setBackgroundColor:[UIColor grayColor]];
    UIBezierPath *maskPath = [UIBezierPath bezierPathWithRect:imageView.bounds];
    UIBezierPath *holePath = [UIBezierPath bezierPathWithRect:CGRectInset(CGRectMake(50, 100, SCREEN_WIDTH-100, SCREEN_WIDTH-100), 0, 0)];
    [maskPath appendPath:holePath];
    CAShapeLayer *mask = [CAShapeLayer layer];
    [mask setFillRule:kCAFillRuleEvenOdd];
    mask.path = maskPath.CGPath;
    [imageView.layer setMask:mask];
    [self.view addSubview:imageView];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
