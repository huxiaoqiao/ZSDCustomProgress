//
//  ZSDCustomProgress.h
//  Qian100
//
//  Created by 胡晓桥 on 14/12/23.
//  Copyright (c) 2014年 ZOSENDA. All rights reserved.
//
/**
 *  自定义进度条控件，适用于StoryBoard中添加
 */
#import <UIKit/UIKit.h>

@interface ZSDCustomProgress : UIView

@property (nonatomic, assign) CGFloat  progress;   // 进度参数（取值范围为 0.0 ~ 1.0）
@property (nonatomic, strong) UIColor *layerColor; // 修改进度条的颜色

@end
