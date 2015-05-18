//
//  VMArrow.h
//  VMBubbleComitText
//
//  Created by Vu Mai on 4/20/15.
//  Copyright (c) 2015 VuMai. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "VMBubble.h"
@interface VMArrow : UIView
@property (nonatomic) CGFloat border;
@property (nonatomic) UIColor *backgroundColor;
@property (nonatomic) NSInteger type;

-(void)generateArrowCloudWithFrame:(CGRect)frameView withBgColor:(UIColor*)cl;
@end
