//
//  VMFrame.m
//  VMBubbleComitText
//
//  Created by Vu Mai on 4/20/15.
//  Copyright (c) 2015 VuMai. All rights reserved.
//

#import "VMFrame.h"

@implementation VMFrame

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
            [VMBubble drawFrameBubbleOvalWithFrame:self.bounds boder:3 bgColor:self.backgroundColor bdColor:self.boderColor];
            break;
        case 2:
            [VMBubble drawCloudWithFrame:self.bounds boder:3 bgColor:self.backgroundColor bdColor:self.boderColor];
            break;
        case 3:
            [VMBubble drawSquareBoWithFrame:self.bounds boder:3 radius:10 bgColor:self.backgroundColor bdColor:self.boderColor];
            break;
        case 4:
            [VMBubble drawSquareWithFrame:self.bounds boder:3 bgColor:self.backgroundColor bdColor:self.boderColor];
            break;
        case 5:
            [VMBubble drawStarWithFrame:self.bounds boder:3 bgColor:self.backgroundColor bdColor:self.boderColor];
            break;
        case 6:
            [VMBubble drawOvalDashWithFrame:self.bounds boder:3 bgColor:self.backgroundColor bdColor:self.boderColor];
            break;
        case 7:
            [VMBubble drawSquareWithFrame:self.bounds boder:3 bgColor:self.backgroundColor bdColor:self.boderColor];
            break;
        case 8:
            [VMBubble drawSquareWithFrame:self.bounds boder:3 bgColor:self.backgroundColor bdColor:self.boderColor];
            break;
        default:
            break;
    }
    
    
}

@end
