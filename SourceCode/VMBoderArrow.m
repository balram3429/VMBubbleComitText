//
//  VMBoderArrow.m
//  VMBubbleComitText
//
//  Created by Vu Mai on 4/20/15.
//  Copyright (c) 2015 VuMai. All rights reserved.
//

#import "VMBoderArrow.h"

@implementation VMBoderArrow

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.opaque = NO;
        self.backgroundColor = [UIColor clearColor];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.opaque = NO;
        self.backgroundColor = [UIColor clearColor];
    }
    return self;
}

- (void)drawRect:(CGRect)rect {
    switch (self.type) {
        case 1:
            [VMBubble drawArrowBorderWithFrame:self.bounds boder:4 bgColor:self.backgroundColor bdColor:self.boderColor];
            break;
        case 2:
            [self generateArrowCloudWithFrame:self.bounds withBgColor:self.backgroundColor withBdColor:self.boderColor];
            break;
        case 3:
            [VMBubble drawArrowBorderWithFrame:self.bounds boder:4 bgColor:self.backgroundColor bdColor:self.boderColor];
            break;
        case 4:
            [VMBubble drawArrowBorderWithFrame:self.bounds boder:4 bgColor:self.backgroundColor bdColor:self.boderColor];
            break;
        case 5:
            [VMBubble drawArrowBoderBubbleStarWithFrame:self.bounds boder:4 bgColor:self.backgroundColor bdColor:self.boderColor];
            break;
        case 6:
            [VMBubble drawArrowBoderOvalDashWithFrame:self.bounds boder:4 bgColor:self.backgroundColor bdColor:self.boderColor];
            break;
        case 7:
            [VMBubble drawArrowBoderPointerWithFrame:self.bounds boder:4 bgColor:self.backgroundColor bdColor:self.boderColor];
            break;
        case 8:
            break;
        default:
            break;
    }
    
}

-(void)generateArrowCloudWithFrame:(CGRect)frameView withBgColor:(UIColor*)cl withBdColor:(UIColor*)clBd
{
    for (UIView *vi in self.subviews) {
        [vi removeFromSuperview];
    }
    for (NSInteger i = 0; i<10; i++) {
        
        if (((5*i+3)*i) >= frameView.size.height) {
            break;
        }
        
        UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 5*i+3, 5*i+3)];
        [view.layer setCornerRadius:(5*i+3)/2];
        [view.layer setBorderColor:[clBd CGColor]];
        [view.layer setBorderWidth:4];
        [view setCenter:CGPointMake(frameView.size.width/2, (5*i+3) *i )];
        [view setBackgroundColor:cl];
        
        [self addSubview:view];
        
        
    }
}

@end
