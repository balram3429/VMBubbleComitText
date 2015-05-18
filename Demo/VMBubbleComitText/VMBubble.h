//
//  VMBubble.h
//  VMBubbleComitText
//
//  Created by Vu Mai on 4/20/15.
//  Copyright (c) 2015 VuMai. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface VMBubble : NSObject

+ (void)drawFrameBubbleOvalWithFrame: (CGRect)frame boder: (CGFloat)boder bgColor:(UIColor*)bgColor bdColor:(UIColor*)bdColor;
+ (void)drawArrowBorderWithFrame: (CGRect)frame boder: (CGFloat)boder bgColor:(UIColor*)bgColor bdColor:(UIColor*)bdColor;
+ (void)drawArrowWithFrame: (CGRect)frame boder: (CGFloat)boder bgColor:(UIColor*)bgColor;
+ (void)drawCloudWithFrame: (CGRect)frame boder: (CGFloat)boder bgColor:(UIColor*)bgColor bdColor:(UIColor*)bdColor;
+ (void)drawCircleArrowWithFrame: (CGRect)frame boder: (CGFloat)boder bgColor:(UIColor*)bgColor bdColor:(UIColor*)bdColor;
+ (void)drawCircleWithFrame: (CGRect)frame bgColor:(UIColor*)bgColor;
+ (void)drawSquareBoWithFrame: (CGRect)frame boder: (CGFloat)boder radius: (CGFloat)radius bgColor:(UIColor*)bgColor bdColor:(UIColor*)bdColor;
+ (void)drawSquareWithFrame: (CGRect)frame boder: (CGFloat)boder bgColor:(UIColor*)bgColor bdColor:(UIColor*)bdColor;
+ (void)drawStarWithFrame: (CGRect)frame boder: (CGFloat)boder bgColor:(UIColor*)bgColor bdColor:(UIColor*)bdColor;
+ (void)drawArrowBoderBubbleStarWithFrame: (CGRect)frame boder: (CGFloat)boder bgColor:(UIColor*)bgColor bdColor:(UIColor*)bdColor;
+ (void)drawArrowBubbleStarWithFrame: (CGRect)frame boder: (CGFloat)boder bgColor:(UIColor*)bgColor;
+ (void)drawOvalDashWithFrame: (CGRect)frame boder: (CGFloat)boder bgColor:(UIColor*)bgColor bdColor:(UIColor*)bdColor;
+ (void)drawArrowBoderOvalDashWithFrame: (CGRect)frame boder: (CGFloat)boder bgColor:(UIColor*)bgColor bdColor:(UIColor*)bdColor;
+ (void)drawArrowOvalDashWithFrame: (CGRect)frame bgColor:(UIColor*)bgColor;
+ (void)drawArrowBoderPointerWithFrame: (CGRect)frame boder: (CGFloat)boder bgColor:(UIColor*)bgColor bdColor:(UIColor*)bdColor;
+ (void)drawArrowPointerWithFrame: (CGRect)frame boder: (CGFloat)boder bgColor:(UIColor*)bgColor;
@end
