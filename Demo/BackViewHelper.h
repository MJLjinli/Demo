//
//  BackViewHelper.h
//  Demo
//
//  Created by 马金丽 on 17/7/10.
//  Copyright © 2017年 majinli. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "FXBlurView.h"
@interface BackViewHelper : NSObject

+ (instancetype)shareInstacne;


@property(nonatomic,strong)UIView *backView;

@property(nonatomic,strong)FXBlurView *blurView;
@end
