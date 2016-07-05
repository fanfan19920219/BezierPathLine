//
//  backGroundLayer.m
//  Sci_Line
//
//  Created by M-SJ077 on 16/7/5.
//  Copyright © 2016年 zhangzhihua. All rights reserved.
//

#import "backGroundLayer.h"

#define SPACE 30.f


@interface backGroundLayer ()

@property (nonatomic , strong)UIBezierPath *Initpath;

@property (nonatomic , strong)UIBezierPath *animationPath;



@end


@implementation backGroundLayer

- (instancetype)init{
    
    if (self == [super init]) {
        self.fillColor = [UIColor colorWithHexString:@"#ffffff"].CGColor;
        self.strokeColor = [UIColor colorWithHexString:@"#2388ed"].CGColor;
        self.path = self.Initpath.CGPath;
        self.lineWidth = 2.1f;
    }
    return self;
}


-(UIBezierPath *)Initpath{
    if(!_Initpath){
        _Initpath = [UIBezierPath bezierPath];
        _Initpath.lineCapStyle = kCGLineCapRound;  //线条拐角
        _Initpath.lineJoinStyle = kCGLineCapRound;  //终点处理
        //1
        [_Initpath moveToPoint:CGPointMake(SPACE + 30, 150)];
         [_Initpath addArcWithCenter:CGPointMake(SPACE + 30, 150) radius:2 startAngle:0 endAngle:2*M_PI clockwise:1];
        //2
        [_Initpath addLineToPoint:CGPointMake(SPACE + 90, 150)];
        [_Initpath addArcWithCenter:CGPointMake(SPACE + 90, 150) radius:2 startAngle:0 endAngle:2*M_PI clockwise:1];
        //3
        [_Initpath addLineToPoint:CGPointMake(SPACE + 150, 270)];
        [_Initpath addArcWithCenter:CGPointMake(SPACE + 150, 270) radius:2 startAngle:0 endAngle:2*M_PI clockwise:1];
        //4
        [_Initpath addLineToPoint:CGPointMake(SPACE + 210, 70)];
        [_Initpath addArcWithCenter:CGPointMake(SPACE + 210, 70) radius:2 startAngle:0 endAngle:2*M_PI clockwise:1];
        //5
        [_Initpath addLineToPoint:CGPointMake(SPACE + 270, 220)];
        [_Initpath addArcWithCenter:CGPointMake(SPACE + 270, 220) radius:2 startAngle:0 endAngle:2*M_PI clockwise:1];
        
        [_Initpath setLineWidth:1];
        [_Initpath stroke];
    }
    return _Initpath;
}

-(UIBezierPath*)animationPath{
    if(!_animationPath){
        _animationPath = [UIBezierPath bezierPath];
        _animationPath.lineCapStyle = kCGLineCapRound;  //线条拐角
        _animationPath.lineJoinStyle = kCGLineCapRound;  //终点处理
        //1
        [_animationPath moveToPoint:CGPointMake(SPACE + 30, 150)];
        [_animationPath addArcWithCenter:CGPointMake(SPACE + 30, 150) radius:2 startAngle:0 endAngle:2*M_PI clockwise:1];
        //2
        [_animationPath addLineToPoint:CGPointMake(SPACE + 90, 150)];
        [_animationPath addArcWithCenter:CGPointMake(SPACE + 90, 150) radius:2 startAngle:0 endAngle:2*M_PI clockwise:1];
        //3
        [_animationPath addLineToPoint:CGPointMake(SPACE + 150, 280)];
        [_animationPath addArcWithCenter:CGPointMake(SPACE + 150, 280) radius:2 startAngle:0 endAngle:2*M_PI clockwise:1];
        //4
        [_animationPath addLineToPoint:CGPointMake(SPACE + 210, 50)];
        [_animationPath addArcWithCenter:CGPointMake(SPACE + 210, 50) radius:2 startAngle:0 endAngle:2*M_PI clockwise:1];
        //5
        [_animationPath addLineToPoint:CGPointMake(SPACE + 250, 220)];
        [_animationPath addArcWithCenter:CGPointMake(SPACE + 250, 220) radius:2 startAngle:0 endAngle:2*M_PI clockwise:1];
        
        //    line1.lineCapStyle = kCGLineCapButt;  //线条拐角
        //    line1.lineJoinStyle = kCGLineCapButt;  //终点处理
        [_animationPath setLineWidth:1];
        [_animationPath stroke];
    }
    return _animationPath;
}


- (void)triangleAnimate {
    //    left
    CABasicAnimation *triangleAnimationLeft = [CABasicAnimation animationWithKeyPath:@"path"];
    triangleAnimationLeft.fromValue = (__bridge id _Nullable)(self.Initpath.CGPath);
    triangleAnimationLeft.toValue = (__bridge id _Nullable)(self.animationPath.CGPath);
    triangleAnimationLeft.duration = 4;
    triangleAnimationLeft.fillMode = kCAFillModeForwards;
    triangleAnimationLeft.removedOnCompletion = NO;
    [self addAnimation:triangleAnimationLeft forKey:nil];
}


@end
