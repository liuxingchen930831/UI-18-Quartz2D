//
//  LineView.m
//  Quartz2D
//
//  Created by liuxingchen on 16/10/20.
//  Copyright © 2016年 Liuxingchen. All rights reserved.
//

#import "LineView.h"

@implementation LineView

//绘制图形过程:获取图形上下文 -> 创建路径 -> 把路径添加到上下文 -> 渲染上下文
- (void)drawRect:(CGRect)rect
{
    //贝塞尔路径
    UIBezierPath * path = [UIBezierPath bezierPath];
    //描述路径的起点
    [path moveToPoint:CGPointMake(50, 50)];
    //添加一根线到某个点
    [path addLineToPoint:CGPointMake(250, 250)];
    //绘制路径
    [path stroke];
    
}

#pragma mark - 最原始的绘制图形
-(void)drawLine
{
    //1.获取图形上下文
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    
    //2.描述路径
    //创建路径
    CGMutablePathRef path = CGPathCreateMutable();
    
    //设置起点
    // path:给哪个路径设置起点
    CGPathMoveToPoint(path, NULL, 50, 50);
    
    //添加一根线到某个点
    CGPathAddLineToPoint(path, NULL, 150, 150);
    
    //3.把路径添加到上下文
    CGContextAddPath(ctx, path);
    
    //4.渲染上下文
    CGContextStrokePath(ctx);
}
@end
