//
//  BackViewHelper.m
//  Demo
//
//  Created by 马金丽 on 17/7/10.
//  Copyright © 2017年 majinli. All rights reserved.
//

#import "BackViewHelper.h"

@implementation BackViewHelper


+(instancetype)shareInstacne
{
    static BackViewHelper *heplerView = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        heplerView = [[BackViewHelper alloc]init];
    });
    return heplerView;
}



- (UIView *)backView
{
    if (!_backView) {
        _backView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height)];
        _backView.backgroundColor = [UIColor blackColor];
        _backView.alpha = 0.5;
        UITapGestureRecognizer *tapGus = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(hidenView:)];
        [_backView addGestureRecognizer:tapGus];
    }
    return _backView;
}

- (FXBlurView *)blurView
{
    if (!_blurView) {
        _blurView = [[FXBlurView alloc]initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height)];
        _blurView.blurRadius = 40;
        UITapGestureRecognizer *tapGus = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(hidenView:)];
        [_blurView addGestureRecognizer:tapGus];
    }
    return _blurView;
}

- (void)hidenView:(UITapGestureRecognizer *)tapSender
{
    [_backView removeFromSuperview];
    [_blurView removeFromSuperview];
}
@end
