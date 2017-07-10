//
//  PublucBackView.m
//  Demo
//
//  Created by 马金丽 on 17/7/10.
//  Copyright © 2017年 majinli. All rights reserved.
//

#import "PublucBackView.h"


@interface PublucBackView()


@end

@implementation PublucBackView

+(instancetype)shareInstance
{
    static PublucBackView *backView = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        backView = [[PublucBackView alloc]init];
        [backView initView];
    });
    return backView;
}


- (void)initView
{
    self.backgroundColor = [UIColor blackColor];
    self.alpha = 0.5;
}

@end
