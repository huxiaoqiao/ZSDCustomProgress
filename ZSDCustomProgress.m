//
//  ZSDCustomProgress.m
//  Qian100
//
//  Created by 胡晓桥 on 14/12/23.
//  Copyright (c) 2014年 ZOSENDA. All rights reserved.
//

#import "ZSDCustomProgress.h"

@interface ZSDCustomProgress()

@property (nonatomic, strong) CALayer *progressLayer;

@end

@implementation ZSDCustomProgress


- (void)awakeFromNib
{
    [super awakeFromNib];
    self.progressLayer = [CALayer layer];
    CGFloat height = self.frame.size.height;
    
    //self.backgroundColor = [UIColor whiteColor];
    self.layer.borderWidth = 0.5;
    self.layer.borderColor = [UIColor lightGrayColor].CGColor;
    self.layer.cornerRadius = height / 2;
    
    self.progressLayer.frame = CGRectMake(0, 0, 0, height);
    self.progressLayer.cornerRadius = height / 2;
    self.progressLayer.backgroundColor = kThemeRedColor.CGColor;
    [self.layer addSublayer:self.progressLayer];
    
    [self.layer layoutIfNeeded];
    [self layoutIfNeeded];
}

#pragma mark - 重写setter，getter方法
@synthesize progress = _progress;
- (void)setProgress:(CGFloat)progress {
    _progress = progress;
    [self updateProgress];
    [self setNeedsDisplay];
}
- (CGFloat)progress {
    return _progress;
}

- (void)updateProgress
{
    if (_progress <= 0) {
        self.progressLayer.frame = CGRectMake(0, 0, 0, self.frame.size.height);
    } else if (_progress <= 1) {
        self.progressLayer.frame = CGRectMake(0, 0,
                                              _progress * self.frame.size.width,
                                              self.frame.size.height);
    } else {
        self.progressLayer.frame = CGRectMake(0, 0, self.frame.size.width,
                                              self.frame.size.height);
    }

}

- (void)drawRect:(CGRect)rect
{
    [self updateProgress];
}

@synthesize layerColor = _layerColor;
- (void)setLayerColor:(UIColor *)layerColor {
    _layerColor = layerColor;
    self.progressLayer.backgroundColor = layerColor.CGColor;
}
- (UIColor *)layerColor {
    return _layerColor;
}


@end
