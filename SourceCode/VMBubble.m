//
//  VMBubble.m
//  VMBubbleComitText
//
//  Created by Vu Mai on 4/20/15.
//  Copyright (c) 2015 VuMai. All rights reserved.
//

#import "VMBubble.h"

@implementation VMBubble

+ (void)drawFrameBubbleOvalWithFrame: (CGRect)frame boder: (CGFloat)boder bgColor:(UIColor*)bgColor bdColor:(UIColor*)bdColor
{
    //// Color Declarations
    UIColor* backgroundColor = bgColor;
    UIColor* boderColor = bdColor;
    
    
    //// Oval Drawing
    UIBezierPath* ovalPath = [UIBezierPath bezierPathWithOvalInRect: CGRectMake(CGRectGetMinX(frame) + floor(CGRectGetWidth(frame) * 0.02350) + 0.5, CGRectGetMinY(frame) + floor(CGRectGetHeight(frame) * 0.05963) + 0.5, floor(CGRectGetWidth(frame) * 0.98077) - floor(CGRectGetWidth(frame) * 0.02350), floor(CGRectGetHeight(frame) * 0.95872) - floor(CGRectGetHeight(frame) * 0.05963))];
    [backgroundColor setFill];
    [ovalPath fill];
    [boderColor setStroke];
    ovalPath.lineWidth = boder;
    [ovalPath stroke];
    
    
    //// Rectangle Drawing
    UIBezierPath* rectanglePath = [UIBezierPath bezierPathWithRect: CGRectMake(CGRectGetMinX(frame) + floor(CGRectGetWidth(frame) * 0.13248 + 0.5), CGRectGetMinY(frame) + floor(CGRectGetHeight(frame) * 0.28440 + 0.5), floor(CGRectGetWidth(frame) * 0.88034 + 0.5) - floor(CGRectGetWidth(frame) * 0.13248 + 0.5), floor(CGRectGetHeight(frame) * 0.74312 + 0.5) - floor(CGRectGetHeight(frame) * 0.28440 + 0.5))];
    [backgroundColor setFill];
    [rectanglePath fill];
}

+ (void)drawArrowBorderWithFrame: (CGRect)frame boder: (CGFloat)boder bgColor:(UIColor*)bgColor bdColor:(UIColor*)bdColor
{
    //// Color Declarations
    UIColor* backgroundColor = bgColor;
    UIColor* boderColor = bdColor;
    
    //// Polygon Drawing
    UIBezierPath* polygonPath = UIBezierPath.bezierPath;
    [polygonPath moveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.50926 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.08803 * CGRectGetHeight(frame))];
    [polygonPath addLineToPoint: CGPointMake(CGRectGetMinX(frame) + 0.78704 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.98944 * CGRectGetHeight(frame))];
    [polygonPath addLineToPoint: CGPointMake(CGRectGetMinX(frame) + 0.21296 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.98944 * CGRectGetHeight(frame))];
    [polygonPath addLineToPoint: CGPointMake(CGRectGetMinX(frame) + 0.50926 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.08803 * CGRectGetHeight(frame))];
    [polygonPath closePath];
    [backgroundColor setFill];
    [polygonPath fill];
    [boderColor setStroke];
    polygonPath.lineWidth = boder;
    [polygonPath stroke];
}

+ (void)drawArrowWithFrame: (CGRect)frame boder: (CGFloat)boder bgColor:(UIColor*)bgColor
{
    //// Color Declarations
    UIColor* backgroundColor = bgColor;
    
    //// Polygon Drawing
    UIBezierPath* polygonPath = UIBezierPath.bezierPath;
    [polygonPath moveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.50926 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.08803 * CGRectGetHeight(frame))];
    [polygonPath addLineToPoint: CGPointMake(CGRectGetMinX(frame) + 0.78704 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.98944 * CGRectGetHeight(frame))];
    [polygonPath addLineToPoint: CGPointMake(CGRectGetMinX(frame) + 0.21296 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.98944 * CGRectGetHeight(frame))];
    [polygonPath addLineToPoint: CGPointMake(CGRectGetMinX(frame) + 0.50926 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.08803 * CGRectGetHeight(frame))];
    [polygonPath closePath];
    [backgroundColor setFill];
    [polygonPath fill];
}

+ (void)drawCloudWithFrame: (CGRect)frame boder: (CGFloat)boder bgColor:(UIColor*)bgColor bdColor:(UIColor*)bdColor
{
    //// Color Declarations
    UIColor* backgroundColor = bgColor;
    UIColor* boderColor = bdColor;
    
    UIBezierPath* bezierPath = UIBezierPath.bezierPath;
    [bezierPath moveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.50887 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.09197 * CGRectGetHeight(frame))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.51941 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.07616 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.51169 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.08645 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.51520 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.08114 * CGRectGetHeight(frame))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.57421 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.04786 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.53405 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.05885 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.55417 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.04918 * CGRectGetHeight(frame))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.58895 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.04842 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.57916 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.04754 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.58410 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.04772 * CGRectGetHeight(frame))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.59248 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.04801 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.59013 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.04825 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.59130 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.04812 * CGRectGetHeight(frame))];
    [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(frame) + 0.59339 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.04793 * CGRectGetHeight(frame))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.64182 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.06300 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.61072 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.04656 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.62806 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.05143 * CGRectGetHeight(frame))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.64583 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.06668 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.64322 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.06418 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.64456 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.06541 * CGRectGetHeight(frame))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.66682 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.10675 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.65402 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.07196 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.66145 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.08539 * CGRectGetHeight(frame))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.67318 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.14657 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.66984 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.11879 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.67195 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.13231 * CGRectGetHeight(frame))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.74159 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.12685 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.69395 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.12865 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.71983 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.12085 * CGRectGetHeight(frame))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.75216 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.13106 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.74525 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.12786 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.74878 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.12926 * CGRectGetHeight(frame))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.76408 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.13997 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.75667 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.13347 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.76065 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.13648 * CGRectGetHeight(frame))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.80857 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.16793 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.78056 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.14423 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.79624 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.15364 * CGRectGetHeight(frame))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.82015 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.18485 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.81315 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.17324 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.81701 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.17893 * CGRectGetHeight(frame))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.83129 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.24245 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.82793 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.19560 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.83221 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.21546 * CGRectGetHeight(frame))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.82590 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.28634 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.83080 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.25669 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.82891 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.27158 * CGRectGetHeight(frame))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.87121 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.28394 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.84016 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.27913 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.85626 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.27843 * CGRectGetHeight(frame))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.88114 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.28863 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.87459 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.28519 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.87791 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.28675 * CGRectGetHeight(frame))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.88470 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.29085 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.88234 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.28933 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.88352 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.29007 * CGRectGetHeight(frame))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.91511 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.30818 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.89556 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.29348 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.90606 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.29929 * CGRectGetHeight(frame))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.92596 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.31756 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.91907 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.31035 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.92271 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.31353 * CGRectGetHeight(frame))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.94566 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.34384 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.93419 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.32241 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.94100 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.33163 * CGRectGetHeight(frame))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.95950 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.37425 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.95184 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.35127 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.95663 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.36174 * CGRectGetHeight(frame))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.96204 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.44500 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.96754 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.39680 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.96833 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.42247 * CGRectGetHeight(frame))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.95264 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.46757 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.96085 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.45243 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.95772 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.46004 * CGRectGetHeight(frame))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.94475 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.47890 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.95031 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.47159 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.94768 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.47539 * CGRectGetHeight(frame))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.92230 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.49632 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.93803 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.48695 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.93038 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.49274 * CGRectGetHeight(frame))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.89640 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.51048 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.91433 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.50164 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.90562 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.50636 * CGRectGetHeight(frame))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.92839 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.55982 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.90938 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.52369 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.92075 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.54073 * CGRectGetHeight(frame))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.93051 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.63452 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.94026 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.58952 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.94026 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.61710 * CGRectGetHeight(frame))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.92386 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.65372 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.92988 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.64318 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.92763 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.64965 * CGRectGetHeight(frame))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.89368 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.67990 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.91876 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.66816 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.90843 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.67789 * CGRectGetHeight(frame))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.86738 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.67601 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.88534 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.68103 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.87639 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.67959 * CGRectGetHeight(frame))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.87216 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.69451 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.86926 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.68211 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.87086 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.68830 * CGRectGetHeight(frame))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.87073 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.75570 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.87747 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.72007 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.87655 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.74142 * CGRectGetHeight(frame))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.84775 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.79677 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.86838 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.77162 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.86067 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.78629 * CGRectGetHeight(frame))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.75659 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.79222 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.82190 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.81775 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.78371 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.81503 * CGRectGetHeight(frame))];
    [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(frame) + 0.75667 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.79494 * CGRectGetHeight(frame))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.75153 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.86848 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.76361 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.81544 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.76239 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.84236 * CGRectGetHeight(frame))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.69548 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.92619 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.73919 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.89815 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.71752 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.91930 * CGRectGetHeight(frame))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.61845 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.94234 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.67189 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.94186 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.64481 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.94709 * CGRectGetHeight(frame))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.54832 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.92621 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.59438 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.94539 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.56993 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.94013 * CGRectGetHeight(frame))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.49513 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.86523 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.52916 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.92265 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.51027 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.90236 * CGRectGetHeight(frame))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.34903 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.92106 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.45514 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.92069 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.39578 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.94534 * CGRectGetHeight(frame))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.31841 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.91190 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.33846 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.92003 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.32816 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.91703 * CGRectGetHeight(frame))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.28139 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.87554 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.30304 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.90381 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.29062 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.89123 * CGRectGetHeight(frame))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.27582 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.87893 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.27954 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.87672 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.27769 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.87785 * CGRectGetHeight(frame))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.26351 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.89156 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.27176 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.88365 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.26765 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.88788 * CGRectGetHeight(frame))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.22289 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.90605 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.24832 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.90504 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.23451 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.90948 * CGRectGetHeight(frame))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.17591 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.88124 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.20421 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.90789 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.18806 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.89890 * CGRectGetHeight(frame))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.12816 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.74183 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.13744 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.85635 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.11997 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.80129 * CGRectGetHeight(frame))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.09290 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.73289 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.12181 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.73872 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.09811 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.73751 * CGRectGetHeight(frame))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.07277 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.71501 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.08283 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.72395 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.08076 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.72446 * CGRectGetHeight(frame))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.04610 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.66045 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.06040 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.70041 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.04819 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.66679 * CGRectGetHeight(frame))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.04636 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.59455 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.03899 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.63890 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.03962 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.61605 * CGRectGetHeight(frame))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.07348 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.54682 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.05176 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.57731 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.06108 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.56095 * CGRectGetHeight(frame))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.05766 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.52734 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.06639 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.53984 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.06093 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.53314 * CGRectGetHeight(frame))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.04760 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.50946 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.05263 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.51840 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.05088 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.51519 * CGRectGetHeight(frame))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.03249 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.46478 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.03972 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.49570 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.03525 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.47853 * CGRectGetHeight(frame))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.08721 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.31386 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.02012 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.40308 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.04457 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.34295 * CGRectGetHeight(frame))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.10376 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.30483 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.09254 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.31023 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.09807 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.30723 * CGRectGetHeight(frame))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.14789 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.29796 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.11779 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.29893 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.13276 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.29675 * CGRectGetHeight(frame))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.16288 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.19304 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.14206 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.25977 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.14738 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.22228 * CGRectGetHeight(frame))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.19636 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.15438 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.17118 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.17740 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.18239 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.16413 * CGRectGetHeight(frame))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.32589 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.16851 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.23536 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.12717 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.28549 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.13468 * CGRectGetHeight(frame))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.32950 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.15198 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.32712 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.16293 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.32833 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.15741 * CGRectGetHeight(frame))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.34637 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.09723 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.33482 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.12720 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.34082 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.11077 * CGRectGetHeight(frame))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.34891 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.09113 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.34723 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.09513 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.34808 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.09311 * CGRectGetHeight(frame))];
    [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(frame) + 0.34963 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.08942 * CGRectGetHeight(frame))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.38991 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.04474 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.35392 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.07927 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.38013 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.05154 * CGRectGetHeight(frame))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.42011 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.02686 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.40097 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.03705 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.40375 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.02910 * CGRectGetHeight(frame))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.50887 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.09197 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.46047 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.02135 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.49219 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.04673 * CGRectGetHeight(frame))];
    [bezierPath closePath];
    [backgroundColor setFill];
    [bezierPath fill];
    [boderColor setStroke];
    bezierPath.lineWidth = boder;
    [bezierPath stroke];
    
    
    //// Rectangle Drawing
    UIBezierPath* rectanglePath = [UIBezierPath bezierPathWithRect: CGRectMake(CGRectGetMinX(frame) + floor(CGRectGetWidth(frame) * 0.20089 + 0.5), CGRectGetMinY(frame) + floor(CGRectGetHeight(frame) * 0.29286 + 0.5), floor(CGRectGetWidth(frame) * 0.76786 + 0.5) - floor(CGRectGetWidth(frame) * 0.20089 + 0.5), floor(CGRectGetHeight(frame) * 0.67857 + 0.5) - floor(CGRectGetHeight(frame) * 0.29286 + 0.5))];
    [backgroundColor setFill];
    [rectanglePath fill];
    
}

+ (void)drawCircleArrowWithFrame: (CGRect)frame boder: (CGFloat)boder bgColor:(UIColor*)bgColor bdColor:(UIColor*)bdColor
{
    //// Color Declarations
    UIColor* backgroundColor = bgColor;
    UIColor* boderColor = bdColor;
    
    //// Oval 2 Drawing
    UIBezierPath* oval2Path = [UIBezierPath bezierPathWithOvalInRect: CGRectMake(CGRectGetMinX(frame) + floor(CGRectGetWidth(frame) * 0.09722 + 0.5), CGRectGetMinY(frame) + floor(CGRectGetHeight(frame) * 0.03077 + 0.5), floor(CGRectGetWidth(frame) * 0.93056 + 0.5) - floor(CGRectGetWidth(frame) * 0.09722 + 0.5), floor(CGRectGetHeight(frame) * 0.96923 + 0.5) - floor(CGRectGetHeight(frame) * 0.03077 + 0.5))];
    [backgroundColor setFill];
    [oval2Path fill];
    [boderColor setStroke];
    oval2Path.lineWidth = boder;
    [oval2Path stroke];
}

+ (void)drawCircleWithFrame: (CGRect)frame bgColor:(UIColor*)bgColor
{
    //// Color Declarations
    UIColor* backgroundColor = bgColor;
    
    //// Oval 2 Drawing
    UIBezierPath* oval2Path = [UIBezierPath bezierPathWithOvalInRect: CGRectMake(CGRectGetMinX(frame) + floor(CGRectGetWidth(frame) * 0.09722 + 0.5), CGRectGetMinY(frame) + floor(CGRectGetHeight(frame) * 0.03077 + 0.5), floor(CGRectGetWidth(frame) * 0.93056 + 0.5) - floor(CGRectGetWidth(frame) * 0.09722 + 0.5), floor(CGRectGetHeight(frame) * 0.96923 + 0.5) - floor(CGRectGetHeight(frame) * 0.03077 + 0.5))];
    [backgroundColor setFill];
    [oval2Path fill];
}

+ (void)drawSquareBoWithFrame: (CGRect)frame boder: (CGFloat)boder radius: (CGFloat)radius bgColor:(UIColor*)bgColor bdColor:(UIColor*)bdColor
{
    //// Color Declarations
    UIColor* backgroundColor = bgColor;
    UIColor* boderColor = bdColor;
    
    //// Rectangle Drawing
    UIBezierPath* rectanglePath = [UIBezierPath bezierPathWithRoundedRect: CGRectMake(CGRectGetMinX(frame) + floor(CGRectGetWidth(frame) * 0.02283 + 0.5), CGRectGetMinY(frame) + floor(CGRectGetHeight(frame) * 0.05208 + 0.5), floor(CGRectGetWidth(frame) * 0.97260 + 0.5) - floor(CGRectGetWidth(frame) * 0.02283 + 0.5), floor(CGRectGetHeight(frame) * 0.93750 + 0.5) - floor(CGRectGetHeight(frame) * 0.05208 + 0.5)) cornerRadius: radius];
    [backgroundColor setFill];
    [rectanglePath fill];
    [boderColor setStroke];
    rectanglePath.lineWidth = boder;
    [rectanglePath stroke];
    
    
    //// Rectangle 2 Drawing
    UIBezierPath* rectangle2Path = [UIBezierPath bezierPathWithRect: CGRectMake(CGRectGetMinX(frame) + floor(CGRectGetWidth(frame) * 0.12329 + 0.5), CGRectGetMinY(frame) + floor(CGRectGetHeight(frame) * 0.20833 + 0.5), floor(CGRectGetWidth(frame) * 0.87671 + 0.5) - floor(CGRectGetWidth(frame) * 0.12329 + 0.5), floor(CGRectGetHeight(frame) * 0.78125 + 0.5) - floor(CGRectGetHeight(frame) * 0.20833 + 0.5))];
    [backgroundColor setFill];
    [rectangle2Path fill];
}

+ (void)drawSquareWithFrame: (CGRect)frame boder: (CGFloat)boder bgColor:(UIColor*)bgColor bdColor:(UIColor*)bdColor
{
    //// Color Declarations
    UIColor* backgroundColor = bgColor;
    UIColor* boderColor = bdColor;
    
    //// Rectangle Drawing
    UIBezierPath* rectanglePath = [UIBezierPath bezierPathWithRect: CGRectMake(CGRectGetMinX(frame) + floor(CGRectGetWidth(frame) * 0.02273 + 0.5), CGRectGetMinY(frame) + floor(CGRectGetHeight(frame) * 0.05102 + 0.5), floor(CGRectGetWidth(frame) * 0.97273 + 0.5) - floor(CGRectGetWidth(frame) * 0.02273 + 0.5), floor(CGRectGetHeight(frame) * 0.93878 + 0.5) - floor(CGRectGetHeight(frame) * 0.05102 + 0.5))];
    [backgroundColor setFill];
    [rectanglePath fill];
    [boderColor setStroke];
    rectanglePath.lineWidth = boder;
    [rectanglePath stroke];
    
    
    //// Rectangle 2 Drawing
    UIBezierPath* rectangle2Path = [UIBezierPath bezierPathWithRect: CGRectMake(CGRectGetMinX(frame) + floor(CGRectGetWidth(frame) * 0.10000 + 0.5), CGRectGetMinY(frame) + floor(CGRectGetHeight(frame) * 0.20408 + 0.5), floor(CGRectGetWidth(frame) * 0.90455 + 0.5) - floor(CGRectGetWidth(frame) * 0.10000 + 0.5), floor(CGRectGetHeight(frame) * 0.78571 + 0.5) - floor(CGRectGetHeight(frame) * 0.20408 + 0.5))];
    [backgroundColor setFill];
    [rectangle2Path fill];
}

+ (void)drawStarWithFrame: (CGRect)frame boder: (CGFloat)boder bgColor:(UIColor*)bgColor bdColor:(UIColor*)bdColor
{
    //// Color Declarations
    UIColor* backgroundColor = bgColor;
    UIColor* boderColor = bdColor;
    //// Bezier Drawing
    UIBezierPath* bezierPath = UIBezierPath.bezierPath;
    [bezierPath moveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.49633 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.04288 * CGRectGetHeight(frame))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.57190 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.14346 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.49631 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.04286 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.53241 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.09091 * CGRectGetHeight(frame))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.65761 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.05465 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.61932 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.09433 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.65761 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.05465 * CGRectGetHeight(frame))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.64306 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.16364 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.65761 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.05465 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.65146 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.10072 * CGRectGetHeight(frame))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.76798 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.11634 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.70812 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.13900 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.76798 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.11634 * CGRectGetHeight(frame))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.77086 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.22419 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.76798 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.11634 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.76931 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.16625 * CGRectGetHeight(frame))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.86965 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.22013 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.82242 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.22207 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.86524 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.22031 * CGRectGetHeight(frame))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.83088 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.31949 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.87002 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.22012 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.85308 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.26312 * CGRectGetHeight(frame))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.97029 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.35698 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.90207 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.33863 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.97029 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.35698 * CGRectGetHeight(frame))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.85902 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.48889 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.97029 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.35698 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.91122 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.42701 * CGRectGetHeight(frame))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.97763 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.61537 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.91466 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.54822 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.97763 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.61537 * CGRectGetHeight(frame))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.84549 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.65780 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.97763 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.61537 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.91367 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.63591 * CGRectGetHeight(frame))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.87895 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.74275 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.86484 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.70692 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.87895 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.74275 * CGRectGetHeight(frame))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.78544 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.73891 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.87895 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.74275 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.83730 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.74104 * CGRectGetHeight(frame))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.78925 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.86524 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.78741 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.80429 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.78925 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.86524 * CGRectGetHeight(frame))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.65758 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.82254 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.78925 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.86524 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.72556 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.84459 * CGRectGetHeight(frame))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.67100 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.92305 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.66540 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.88107 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.67100 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.92305 * CGRectGetHeight(frame))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.59440 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.84367 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.67100 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.92305 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.63752 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.88835 * CGRectGetHeight(frame))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.52211 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.95146 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.55698 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.89945 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.52211 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.95146 * CGRectGetHeight(frame))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.42487 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.83542 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.52211 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.95146 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.47300 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.89285 * CGRectGetHeight(frame))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.34031 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.92305 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.37798 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.88401 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.34031 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.92305 * CGRectGetHeight(frame))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.35457 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.81620 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.34031 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.92305 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.34632 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.87802 * CGRectGetHeight(frame))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.20337 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.86524 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.27979 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.84045 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.20337 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.86524 * CGRectGetHeight(frame))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.20660 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.75806 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.20337 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.86524 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.20486 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.81572 * CGRectGetHeight(frame))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.10353 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.76230 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.15039 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.76038 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.10353 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.76230 * CGRectGetHeight(frame))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.13484 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.68281 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.10353 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.76230 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.11661 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.72911 * CGRectGetHeight(frame))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.03093 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.66013 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.07791 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.67039 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.03093 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.66013 * CGRectGetHeight(frame))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.14776 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.50569 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.03093 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.66013 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.09653 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.57342 * CGRectGetHeight(frame))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.02232 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.35698 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.09276 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.44048 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.02232 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.35698 * CGRectGetHeight(frame))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.14561 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.32383 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.02232 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.35698 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.08059 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.34131 * CGRectGetHeight(frame))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.11246 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.23966 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.12642 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.27511 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.11246 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.23966 * CGRectGetHeight(frame))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.19150 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.24291 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.11247 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.23966 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.14658 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.24106 * CGRectGetHeight(frame))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.18289 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.14400 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.18680 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.18890 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.18289 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.14400 * CGRectGetHeight(frame))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.34472 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.18803 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.18289 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.14400 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.26620 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.16667 * CGRectGetHeight(frame))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.32691 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.05465 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.33470 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.11299 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.32691 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.05465 * CGRectGetHeight(frame))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.41717 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.14818 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.32691 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.05465 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.36767 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.09689 * CGRectGetHeight(frame))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.49627 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.04290 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.45732 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.09474 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.49501 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.04458 * CGRectGetHeight(frame))];
    [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(frame) + 0.49633 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.04288 * CGRectGetHeight(frame))];
    [bezierPath closePath];
    [backgroundColor setFill];
    [bezierPath fill];
    [boderColor setStroke];
    bezierPath.lineWidth = 2;
    [bezierPath stroke];
    
    
    //// Rectangle Drawing
    UIBezierPath* rectanglePath = [UIBezierPath bezierPathWithRect: CGRectMake(CGRectGetMinX(frame) + floor(CGRectGetWidth(frame) * 0.23375 + 0.31) + 0.19, CGRectGetMinY(frame) + floor(CGRectGetHeight(frame) * 0.31664 + 0.43) + 0.07, floor(CGRectGetWidth(frame) * 0.74973 + 0.31) - floor(CGRectGetWidth(frame) * 0.23375 + 0.31), floor(CGRectGetHeight(frame) * 0.68202 + 0.43) - floor(CGRectGetHeight(frame) * 0.31664 + 0.43))];
    [backgroundColor setFill];
    [rectanglePath fill];
}

+ (void)drawArrowBoderBubbleStarWithFrame: (CGRect)frame boder: (CGFloat)boder bgColor:(UIColor*)bgColor bdColor:(UIColor*)bdColor
{
    //// Color Declarations
    UIColor* backgroundColor = bgColor;
    UIColor* boderColor = bdColor;
    
    //// Bezier 2 Drawing
    UIBezierPath* bezier2Path = UIBezierPath.bezierPath;
    [bezier2Path moveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.60137 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.93852 * CGRectGetHeight(frame))];
    [bezier2Path addLineToPoint: CGPointMake(CGRectGetMinX(frame) + 0.40366 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.39482 * CGRectGetHeight(frame))];
    [bezier2Path addLineToPoint: CGPointMake(CGRectGetMinX(frame) + 0.76928 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.39884 * CGRectGetHeight(frame))];
    [bezier2Path addLineToPoint: CGPointMake(CGRectGetMinX(frame) + 0.48623 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.10656 * CGRectGetHeight(frame))];
    [bezier2Path addLineToPoint: CGPointMake(CGRectGetMinX(frame) + 0.56814 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.32696 * CGRectGetHeight(frame))];
    [bezier2Path addLineToPoint: CGPointMake(CGRectGetMinX(frame) + 0.22803 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.31533 * CGRectGetHeight(frame))];
    [bezier2Path addLineToPoint: CGPointMake(CGRectGetMinX(frame) + 0.37749 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.91109 * CGRectGetHeight(frame))];
    [bezier2Path addLineToPoint: CGPointMake(CGRectGetMinX(frame) + 0.60137 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.93852 * CGRectGetHeight(frame))];
    [bezier2Path closePath];
    [backgroundColor setFill];
    [bezier2Path fill];
    [boderColor setStroke];
    bezier2Path.lineWidth = boder;
    [bezier2Path stroke];
}

+ (void)drawArrowBubbleStarWithFrame: (CGRect)frame boder: (CGFloat)boder bgColor:(UIColor*)bgColor
{
    //// Color Declarations
    UIColor* backgroundColor = bgColor;
    
    //// Bezier 2 Drawing
    UIBezierPath* bezier2Path = UIBezierPath.bezierPath;
    [bezier2Path moveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.60137 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.93852 * CGRectGetHeight(frame))];
    [bezier2Path addLineToPoint: CGPointMake(CGRectGetMinX(frame) + 0.40366 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.39482 * CGRectGetHeight(frame))];
    [bezier2Path addLineToPoint: CGPointMake(CGRectGetMinX(frame) + 0.76928 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.39884 * CGRectGetHeight(frame))];
    [bezier2Path addLineToPoint: CGPointMake(CGRectGetMinX(frame) + 0.48623 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.10656 * CGRectGetHeight(frame))];
    [bezier2Path addLineToPoint: CGPointMake(CGRectGetMinX(frame) + 0.56814 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.32696 * CGRectGetHeight(frame))];
    [bezier2Path addLineToPoint: CGPointMake(CGRectGetMinX(frame) + 0.22803 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.31533 * CGRectGetHeight(frame))];
    [bezier2Path addLineToPoint: CGPointMake(CGRectGetMinX(frame) + 0.37749 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.91109 * CGRectGetHeight(frame))];
    [bezier2Path addLineToPoint: CGPointMake(CGRectGetMinX(frame) + 0.60137 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.93852 * CGRectGetHeight(frame))];
    [bezier2Path closePath];
    [backgroundColor setFill];
    [bezier2Path fill];
}

+ (void)drawOvalDashWithFrame: (CGRect)frame boder: (CGFloat)boder bgColor:(UIColor*)bgColor bdColor:(UIColor*)bdColor;
{
    //// Color Declarations
    UIColor* backgroundColor = bgColor;
    UIColor* boderColor = bdColor;
    
    //// Oval Drawing
    UIBezierPath* ovalPath = [UIBezierPath bezierPathWithOvalInRect: CGRectMake(CGRectGetMinX(frame) + floor(CGRectGetWidth(frame) * 0.02455) + 0.5, CGRectGetMinY(frame) + floor(CGRectGetHeight(frame) * 0.05238) + 0.5, floor(CGRectGetWidth(frame) * 0.97545) - floor(CGRectGetWidth(frame) * 0.02455), floor(CGRectGetHeight(frame) * 0.94762) - floor(CGRectGetHeight(frame) * 0.05238))];
    [backgroundColor setFill];
    [ovalPath fill];
    
    
    //// Bezier Drawing
    UIBezierPath* bezierPath = UIBezierPath.bezierPath;
    [bezierPath moveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.84070 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.17391 * CGRectGetHeight(frame))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.84070 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.82609 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 1.02886 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.35400 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 1.02886 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.64600 * CGRectGetHeight(frame))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.15930 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.82609 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.65254 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 1.00619 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.34746 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 1.00619 * CGRectGetHeight(frame))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.15930 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.17391 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + -0.02886 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.64600 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + -0.02886 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.35400 * CGRectGetHeight(frame))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.18094 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.15442 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.16636 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.16716 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.17357 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.16066 * CGRectGetHeight(frame))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.84070 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.17391 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.37017 * CGRectGetWidth(frame), CGRectGetMinY(frame) + -0.00594 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.65959 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.00056 * CGRectGetHeight(frame))];
    [bezierPath closePath];
    [boderColor setStroke];
    bezierPath.lineWidth = boder;
    CGFloat bezierPattern[] = {6, 4};
    [bezierPath setLineDash: bezierPattern count: 2 phase: 0];
    [bezierPath stroke];
    
    
    //// Rectangle Drawing
    UIBezierPath* rectanglePath = [UIBezierPath bezierPathWithRect: CGRectMake(CGRectGetMinX(frame) + floor(CGRectGetWidth(frame) * 0.11607 + 0.5), CGRectGetMinY(frame) + floor(CGRectGetHeight(frame) * 0.29524 + 0.5), floor(CGRectGetWidth(frame) * 0.89732 + 0.5) - floor(CGRectGetWidth(frame) * 0.11607 + 0.5), floor(CGRectGetHeight(frame) * 0.69524 + 0.5) - floor(CGRectGetHeight(frame) * 0.29524 + 0.5))];
    [backgroundColor setFill];
    [rectanglePath fill];
}

+ (void)drawArrowBoderOvalDashWithFrame:(CGRect)frame boder: (CGFloat)boder bgColor:(UIColor*)bgColor bdColor:(UIColor*)bdColor;
{
    //// Color Declarations
    UIColor* backgroundColor = bgColor;
    UIColor* boderColor = bdColor;
    
    //// Star 3 Drawing
    UIBezierPath* star3Path = UIBezierPath.bezierPath;
    [star3Path moveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.49894 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.00763 * CGRectGetHeight(frame))];
    [star3Path addLineToPoint: CGPointMake(CGRectGetMinX(frame) + 0.82692 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.98473 * CGRectGetHeight(frame))];
    [star3Path addLineToPoint: CGPointMake(CGRectGetMinX(frame) + 0.17095 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.98473 * CGRectGetHeight(frame))];
    [star3Path addLineToPoint: CGPointMake(CGRectGetMinX(frame) + 0.49894 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.00763 * CGRectGetHeight(frame))];
    [star3Path closePath];
    [boderColor setStroke];
    star3Path.lineWidth = boder;
    CGFloat star3Pattern[] = {6, 4};
    [star3Path setLineDash: star3Pattern count: 2 phase: 0];
    [star3Path stroke];
    
    
    //// Star 2 Drawing
    UIBezierPath* star2Path = UIBezierPath.bezierPath;
    [star2Path moveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.49894 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.06870 * CGRectGetHeight(frame))];
    [star2Path addLineToPoint: CGPointMake(CGRectGetMinX(frame) + 0.80769 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.97814 * CGRectGetHeight(frame))];
    [star2Path addLineToPoint: CGPointMake(CGRectGetMinX(frame) + 0.19018 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.97814 * CGRectGetHeight(frame))];
    [star2Path addLineToPoint: CGPointMake(CGRectGetMinX(frame) + 0.49894 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.06870 * CGRectGetHeight(frame))];
    [star2Path closePath];
    [backgroundColor setFill];
    [star2Path fill];
}

+ (void)drawArrowOvalDashWithFrame: (CGRect)frame bgColor:(UIColor*)bgColor;
{
    //// Color Declarations
    UIColor* backgroundColor = bgColor;
    
    //// Star 2 Drawing
    UIBezierPath* star2Path = UIBezierPath.bezierPath;
    [star2Path moveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.49894 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.06870 * CGRectGetHeight(frame))];
    [star2Path addLineToPoint: CGPointMake(CGRectGetMinX(frame) + 0.80769 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.97814 * CGRectGetHeight(frame))];
    [star2Path addLineToPoint: CGPointMake(CGRectGetMinX(frame) + 0.19018 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.97814 * CGRectGetHeight(frame))];
    [star2Path addLineToPoint: CGPointMake(CGRectGetMinX(frame) + 0.49894 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.06870 * CGRectGetHeight(frame))];
    [star2Path closePath];
    [backgroundColor setFill];
    [star2Path fill];
}

+ (void)drawArrowBoderPointerWithFrame: (CGRect)frame boder: (CGFloat)boder bgColor:(UIColor*)bgColor bdColor:(UIColor*)bdColor;
{
    //// Color Declarations
    UIColor* backgroundColor = bgColor;
    UIColor* boderColor = bdColor;
    
    //// Bezier Drawing
    UIBezierPath* bezierPath = UIBezierPath.bezierPath;
    [bezierPath moveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.25843 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.99079 * CGRectGetHeight(frame))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.41279 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.26571 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.25843 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.97541 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.41279 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.26571 * CGRectGetHeight(frame))];
    [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(frame) + 0.26163 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.26571 * CGRectGetHeight(frame))];
    [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(frame) + 0.49486 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.04234 * CGRectGetHeight(frame))];
    [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(frame) + 0.75000 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.26571 * CGRectGetHeight(frame))];
    [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(frame) + 0.58721 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.26571 * CGRectGetHeight(frame))];
    [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(frame) + 0.75185 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.99079 * CGRectGetHeight(frame))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.25843 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.99079 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.75185 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.99079 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.25843 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 1.00617 * CGRectGetHeight(frame))];
    [bezierPath closePath];
    [backgroundColor setFill];
    [bezierPath fill];
    [boderColor setStroke];
    bezierPath.lineWidth = boder;
    [bezierPath stroke];
    
}

+ (void)drawArrowPointerWithFrame: (CGRect)frame boder: (CGFloat)boder bgColor:(UIColor*)bgColor;
{
    //// Color Declarations
    UIColor* backgroundColor = bgColor;
    
    //// Bezier Drawing
    UIBezierPath* bezierPath = UIBezierPath.bezierPath;
    [bezierPath moveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.25843 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.99079 * CGRectGetHeight(frame))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.41279 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.26571 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.25843 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.97541 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.41279 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.26571 * CGRectGetHeight(frame))];
    [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(frame) + 0.26163 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.26571 * CGRectGetHeight(frame))];
    [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(frame) + 0.49486 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.04234 * CGRectGetHeight(frame))];
    [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(frame) + 0.75000 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.26571 * CGRectGetHeight(frame))];
    [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(frame) + 0.58721 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.26571 * CGRectGetHeight(frame))];
    [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(frame) + 0.75185 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.99079 * CGRectGetHeight(frame))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.25843 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.99079 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.75185 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.99079 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.25843 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 1.00617 * CGRectGetHeight(frame))];
    [bezierPath closePath];
    [backgroundColor setFill];
    [bezierPath fill];
}


@end
