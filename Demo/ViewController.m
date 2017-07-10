//
//  ViewController.m
//  Demo
//
//  Created by 马金丽 on 17/7/7.
//  Copyright © 2017年 majinli. All rights reserved.
//

#import "ViewController.h"
#import "BackViewHelper.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(20, 50, 100, 50);
    btn.backgroundColor = [UIColor orangeColor];
    [btn setTitle:@"点一点" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
 
}


- (void)btnClick:(UIButton *)sender
{
    [[UIApplication sharedApplication].keyWindow addSubview:[BackViewHelper shareInstacne].blurView];
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [[BackViewHelper shareInstacne].blurView removeFromSuperview];
    });
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
