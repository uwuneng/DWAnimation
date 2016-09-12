//
//  UIView+DWAnimation.m
//  DWHUD
//
//  Created by Wicky on 16/8/22.
//  Copyright © 2016年 Wicky. All rights reserved.
//

#import "UIView+DWAnimation.h"
#import "DWAnimation.h"
#import "DWAnimationMaker.h"
#import "DWAnimationManager.h"
@implementation UIView (DWAnimation)

-(DWAnimation *)dw_CreateAnimationWithKey:(NSString *)animationKey animationCreater:(void (^)(DWAnimationMaker *))animationCreater
{
    return [[DWAnimation alloc] initAnimationWithView:self animationKey:animationKey animationCreater:animationCreater];
}

-(DWAnimation *)dw_CreateAnimationWithBeginTime:(CGFloat)beginTime
                                       duration:(CGFloat)duration
                                   animationKey:(NSString *)animationKey
                                     animations:(__kindof NSArray<CAAnimation *> *)animations
{
    return [[DWAnimation alloc] initAnimationWithView:self beginTime:beginTime duration:duration animationKey:animationKey animations:animations];
}

-(DWAnimation *)dw_CreateAnimationWithanimationType:(DWAnimationType)animationType
                                       animationKey:(NSString *)animationKey
                                          beginTime:(CGFloat)beginTime
                                             values:(NSArray *)values
                                      timeIntervals:(NSArray *)timeIntervals
                                         transition:(BOOL)transition
{
    return [[DWAnimation alloc] initAnimationWithView:self animationType:animationType animationKey:animationKey beginTime:beginTime values:values timeIntervals:timeIntervals transition:transition];
}

-(DWAnimation *)dw_CreateAnimationWithAnimationKey:(NSString *)animationKey beginTime:(CGFloat)beginTime duration:(CGFloat)duration bezierPath:(UIBezierPath *)bezierPath autoRotate:(BOOL)autoRotate
{
    return [[DWAnimation alloc] initAnimationWithView:self animationKey:animationKey beginTime:beginTime duration:duration bezierPath:bezierPath autoRotate:autoRotate];
}

-(DWAnimation *)dw_CreateAnimationWithAnimationKey:(NSString *)animationKey beginTime:(CGFloat)beginTime duration:(CGFloat)duration arcCenter:(CGPoint)center radius:(CGFloat)radius startAngle:(CGFloat)startAngle endAngle:(CGFloat)endAngle clockwise:(BOOL)clockwise autoRotate:(BOOL)autoRotate
{
    return [[DWAnimation alloc] initAnimationWithView:self animationKey:animationKey beginTime:beginTime duration:duration arcCenter:center radius:radius startAngle:startAngle endAngle:endAngle clockwise:clockwise autoRotate:autoRotate];
}

-(DWAnimation *)dw_CreateAnimationWithAnimationKey:(NSString *)animationKey springingType:(DWAnimationSpringType)springingType beginTime:(CGFloat)beginTime fromValue:(id)fromValue toValue:(id)toValue mass:(CGFloat)mass stiffness:(CGFloat)stiffness damping:(CGFloat)damping initialVelocity:(CGFloat)initialVelocity
{
    return [[DWAnimation alloc] initAnimationWitnView:self animationKey:animationKey springingType:springingType beginTime:beginTime fromValue:fromValue toValue:toValue mass:mass stiffness:stiffness damping:damping initialVelocity:initialVelocity];
}

+(void)dw_StartAnimations:(__kindof NSArray<DWAnimation *> *)animations playMode:(DWAnimationPlayMode)playMode
{
    [DWAnimationManager startAnimations:animations playMode:playMode];
}

-(DWAnimation *)dw_CreateResetAnimationWithBeginTime:(CGFloat)beginTime duration:(CGFloat)duration
{
    return [DWAnimation createResetAnimationWithView:self beginTime:beginTime duration:duration];
}
@end