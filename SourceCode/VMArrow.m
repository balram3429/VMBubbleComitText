//
//  VMArrow.m
//  VMBubbleComitText
//
//  Created by Vu Mai on 4/20/15.
//  Copyright (c) 2015 VuMai. All rights reserved.
//

#import "VMArrow.h"

@implementation VMArrow

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.opaque = NO;
        self.backgroundColor = [UIColor lightGrayColor];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.opaque = NO;
        self.backgroundColor = [UIColor lightGrayColor];
    }
    return self;
}

- (void)drawRect:(CGRect)rect {
    switch (self.type) {
        case 1:
            [VMBubble drawArrowWithFrame:self.bounds boder:0 bgColor:self.backgroundColor];
            break;
        case 2:
            [self generateArrowCloudWithFrame:self.bounds withBgColor:self.backgroundColor];
            break;
        case 3:
            [VMBubble drawArrowWithFrame:self.bounds boder:0 bgColor:self.backgroundColor];
            break;
        case 4:
            [VMBubble drawArrowWithFrame:self.bounds boder:0 bgColor:self.backgroundColor];
            break;
        case 5:
            [VMBubble drawArrowBubbleStarWithFrame:self.bounds boder:0 bgColor:self.backgroundColor];
            break;
        case 6:
            [VMBubble drawArrowOvalDashWithFrame:self.bounds bgColor:self.backgroundColor];
            break;
        case 7:
            [VMBubble drawArrowPointerWithFrame:self.bounds boder:0 bgColor:self.backgroundColor];
            break;
        case 8:
            
            break;
        default:
            break;
    }
    
}

-(void)generateArrowCloudWithFrame:(CGRect)frameView withBgColor:(UIColor*)cl
{
    for (UIView *vi in self.subviews) {
        [vi removeFromSuperview];
    }
    for (NSInteger i = 0; i<10; i++) {
        
        if (((5*i +3)*i) >= frameView.size.height) {
            break;
        }
        
        UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 5*i - 1, 5*i - 1)];
        [view.layer setCornerRadius:(5*i - 1)/2];
        [view setCenter:CGPointMake(frameView.size.width/2, (5*i+3) *i )];
        [view setBackgroundColor:cl];
        [self addSubview:view];
        
        
    }
}

@end
