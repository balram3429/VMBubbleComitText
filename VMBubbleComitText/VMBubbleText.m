//
//  VMBubbleText.m
//  VMBubbleComitText
//
//  Created by Vu Mai on 4/20/15.
//  Copyright (c) 2015 VuMai. All rights reserved.
//

#import "VMBubbleText.h"
#define DEGREES_TO_RADIANS(x) (M_PI * (x) / 180.0)
#define minimumResize 30

@interface VMBubbleText ()

@property (nonatomic, strong) VMFrame *frameOval;
@property (nonatomic, strong) VMBoderArrow *boderArrow;
@property (nonatomic, strong) VMArrow *arrow;

@property (nonatomic, strong) UIView *panView;
@property (nonatomic, strong) UIView *panGetLocationView;

@property (nonatomic, strong) UIButton *panResizeView;

@property (nonatomic) CGPoint centerOfPanView;

@property (nonatomic) float currentRotateValue;
@property (nonatomic) float currentScaleValue;

@property (nonatomic) UIView *viewTextView;
@property (nonatomic) CGRect currentRectOfTextView;

@end

@implementation VMBubbleText

-(void)initBubbleOval
{
    [self setClipsToBounds:NO];
    [self.layer setMasksToBounds:NO];
    
    UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(clickBubble:)];
    [self addGestureRecognizer:tapGesture];
    
    self.panGetLocationView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 30, 30)];
    [self.panGetLocationView setBackgroundColor:[UIColor clearColor]];
    
    self.frameOval = [[VMFrame alloc] initWithFrame:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height)];
    [self.frameOval setBackgroundColor:self.backgroundColor];
    [self.frameOval setBoderColor:self.boderColor];
    [self.frameOval setType:self.typeOfBubble];
    
    self.boderArrow = [[VMBoderArrow alloc] initWithFrame:CGRectMake(0, 0, self.frame.size.width/3, self.frame.size.height)];
    
    [self.boderArrow setBackgroundColor:self.backgroundColor];
    [self.boderArrow setBoderColor:self.boderColor];
    [self.boderArrow setType:self.typeOfBubble];
    
    self.arrow = [[VMArrow alloc] initWithFrame:CGRectMake(0, 0,self.frame.size.width/3, self.frame.size.height)];
    [self.arrow setBackgroundColor:self.backgroundColor];
    [self.arrow setType:self.typeOfBubble];
    
    [self.arrow.layer setAnchorPoint:CGPointMake(0.5, 1)];
    [self.boderArrow.layer setAnchorPoint:CGPointMake(0.5, 1)];
    [self.frameOval.layer setAnchorPoint:CGPointMake(0.5, 0.5)];
    
    [self.frameOval setCenter:CGPointMake(self.bounds.size.width/2, self.bounds.size.height/2)];
    [self.boderArrow setCenter:CGPointMake(self.bounds.size.width/2, self.bounds.size.height/2)];
    [self.arrow setCenter:CGPointMake(self.bounds.size.width/2, self.bounds.size.height/2)];
    
    self.boderArrow.transform = CGAffineTransformMakeRotation(DEGREES_TO_RADIANS(200));
    self.arrow.transform = CGAffineTransformMakeRotation(DEGREES_TO_RADIANS(200));
    
    self.currentRotateValue = 200;
    self.currentScaleValue = 1;
    
    
    [self addSubview:self.boderArrow];
    [self addSubview:self.frameOval];
    [self addSubview:self.arrow];
    
    self.panGetLocationView.center = CGPointMake(self.arrow.bounds.size.width/2,0
                                                 );
    [self.arrow addSubview:self.panGetLocationView];
    
    [self initTextbox];
    [self initPanResizeView];
    
}

-(void)initPanResizeView
{
    
    UIPanGestureRecognizer *pan = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(panResizeView:)];
    
    self.panResizeView = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 30, 30)];
    [self.panResizeView.layer setCornerRadius:15];
    [self.panResizeView setImage:[UIImage imageNamed:@"IconMove.png"] forState:UIControlStateNormal];
    [self.panResizeView setCenter:CGPointMake(self.frameOval.frame.size.width - 15, self.frameOval.frame.size.height - 15)];
    [self.panResizeView addGestureRecognizer:pan];
    [self.panResizeView setAlpha:0];
    [self addSubview:self.panResizeView];
}

-(void)initTextbox
{
    CGRect rect;
    
    switch (self.typeOfBubble) {
        case 1:
            rect =CGRectMake(CGRectGetMinX(self.frameOval.frame) + floor(CGRectGetWidth(self.frameOval.frame) * 0.08974 + 0.5), CGRectGetMinY(self.frameOval.frame) + floor(CGRectGetHeight(self.frameOval.frame) * 0.27523 + 0.5), floor(CGRectGetWidth(self.frameOval.frame) * 0.90598 + 0.5) - floor(CGRectGetWidth(self.frameOval.frame) * 0.08974 + 0.5), floor(CGRectGetHeight(self.frameOval.frame) * 0.73394 + 0.5) - floor(CGRectGetHeight(self.frameOval.frame) * 0.27523 + 0.5));
            break;
        case 2:
            rect = CGRectMake(CGRectGetMinX(self.frameOval.frame) + floor(CGRectGetWidth(self.frameOval.frame) * 0.15812 + 0.5), CGRectGetMinY(self.frameOval.frame) + floor(CGRectGetHeight(self.frameOval.frame) * 0.28058 + 0.5), floor(CGRectGetWidth(self.frameOval.frame) * 0.83761 + 0.5) - floor(CGRectGetWidth(self.frameOval.frame) * 0.15812 + 0.5), floor(CGRectGetHeight(self.frameOval.frame) * 0.69784 + 0.5) - floor(CGRectGetHeight(self.frameOval.frame) * 0.28058 + 0.5));
            break;
        case 3:
            rect = CGRectMake(CGRectGetMinX(self.frameOval.frame) + floor(CGRectGetWidth(self.frameOval.frame) * 0.12329 + 0.5), CGRectGetMinY(self.frameOval.frame) + floor(CGRectGetHeight(self.frameOval.frame) * 0.20833 + 0.5), floor(CGRectGetWidth(self.frameOval.frame) * 0.87671 + 0.5) - floor(CGRectGetWidth(self.frameOval.frame) * 0.12329 + 0.5), floor(CGRectGetHeight(self.frameOval.frame) * 0.78125 + 0.5) - floor(CGRectGetHeight(self.frameOval.frame) * 0.20833 + 0.5));
            break;
        case 4:
            rect = CGRectMake(CGRectGetMinX(self.frameOval.frame) + floor(CGRectGetWidth(self.frameOval.frame) * 0.05430 + 0.5), CGRectGetMinY(self.frameOval.frame) + floor(CGRectGetHeight(self.frameOval.frame) * 0.13265 + 0.5), floor(CGRectGetWidth(self.frameOval.frame) * 0.94118 + 0.5) - floor(CGRectGetWidth(self.frameOval.frame) * 0.05430 + 0.5), floor(CGRectGetHeight(self.frameOval.frame) * 0.86735 + 0.5) - floor(CGRectGetHeight(self.frameOval.frame) * 0.13265 + 0.5));
            break;
        case 5:
            rect =  CGRectMake(CGRectGetMinX(self.frameOval.frame) + floor(CGRectGetWidth(self.frameOval.frame) * 0.17568 + 0.5), CGRectGetMinY(self.frameOval.frame) + floor(CGRectGetHeight(self.frameOval.frame) * 0.29808 + 0.5), floor(CGRectGetWidth(self.frameOval.frame) * 0.81982 + 0.5) - floor(CGRectGetWidth(self.frameOval.frame) * 0.17568 + 0.5), floor(CGRectGetHeight(self.frameOval.frame) * 0.69231 + 0.5) - floor(CGRectGetHeight(self.frameOval.frame) * 0.29808 + 0.5));
            break;
        case 6:
            rect =  CGRectMake(CGRectGetMinX(self.frameOval.frame) + floor(CGRectGetWidth(self.frameOval.frame) * 0.07143 + 0.5), CGRectGetMinY(self.frameOval.frame) + floor(CGRectGetHeight(self.frameOval.frame) * 0.29524 + 0.5), floor(CGRectGetWidth(self.frameOval.frame) * 0.92857 + 0.5) - floor(CGRectGetWidth(self.frameOval.frame) * 0.07143 + 0.5), floor(CGRectGetHeight(self.frameOval.frame) * 0.69524 + 0.5) - floor(CGRectGetHeight(self.frameOval.frame) * 0.29524 + 0.5));
            break;
        case 7:
            rect = CGRectMake(CGRectGetMinX(self.frameOval.frame) + floor(CGRectGetWidth(self.frameOval.frame) * 0.05430 + 0.5), CGRectGetMinY(self.frameOval.frame) + floor(CGRectGetHeight(self.frameOval.frame) * 0.13265 + 0.5), floor(CGRectGetWidth(self.frameOval.frame) * 0.94118 + 0.5) - floor(CGRectGetWidth(self.frameOval.frame) * 0.05430 + 0.5), floor(CGRectGetHeight(self.frameOval.frame) * 0.86735 + 0.5) - floor(CGRectGetHeight(self.frameOval.frame) * 0.13265 + 0.5));
            break;
        case 8:
            rect = CGRectMake(CGRectGetMinX(self.frameOval.frame) + floor(CGRectGetWidth(self.frameOval.frame) * 0.05430 + 0.5), CGRectGetMinY(self.frameOval.frame) + floor(CGRectGetHeight(self.frameOval.frame) * 0.13265 + 0.5), floor(CGRectGetWidth(self.frameOval.frame) * 0.94118 + 0.5) - floor(CGRectGetWidth(self.frameOval.frame) * 0.05430 + 0.5), floor(CGRectGetHeight(self.frameOval.frame) * 0.86735 + 0.5) - floor(CGRectGetHeight(self.frameOval.frame) * 0.13265 + 0.5));
            break;
        default:
            break;
    }
    
    if (!self.textView)
    {
        self.viewTextView = [[UIView alloc] init];
        //        [self.viewTextView setBackgroundColor:[UIColor lightGrayColor]];
        [self.viewTextView setClipsToBounds:YES];
        self.textView =  [[UITextView alloc] init];
        [self.textView setDelegate:self];
        [self.textView setScrollEnabled:NO];
        [self.textView setBackgroundColor:[UIColor clearColor]];
        [self.textView setTextAlignment:NSTextAlignmentCenter];
        [self.textView setFont:[UIFont boldSystemFontOfSize:17]];
        
        [self addSubview:self.viewTextView];
        [self.viewTextView addSubview:self.textView];
    }
    [self.viewTextView setFrame:rect];
    [self.textView setFrame:CGRectMake(0,0, CGRectGetWidth(self.viewTextView.bounds),CGRectGetHeight(self.viewTextView.bounds))];
    [self.textView setUserInteractionEnabled:NO];
    
    
}

-(void)editTextWithKeyboard
{
    [self.textView becomeFirstResponder];
}


#pragma mark - Delegate
-(void)setCenterOfPanView
{
    self.centerOfPanView = self.arrow.center;
}

-(void)moveArrowWithCenterPanView:(CGPoint)center
{
    // rotate
    if (self.typeOfBubble == 1 || self.typeOfBubble == 3 ||self.typeOfBubble == 4 ||self.typeOfBubble == 5 || self.typeOfBubble == 7 ) {
        CGPoint p0 = self.centerOfPanView;
        CGPoint p1 = center;
        CGFloat f = [self pointPairToBearingDegrees:p0 secondPoint:p1];
        
        
        float distance = [self distanceBetweenTwoPoints:self.centerOfPanView andWith:center];
        NSLog(@"distance : %f and bounds size: %f",distance,self.arrow.bounds.size.height);
        CGAffineTransform rotate = CGAffineTransformMakeRotation(DEGREES_TO_RADIANS(f+90));
        CGAffineTransform scale = CGAffineTransformMakeScale(1, distance/(self.arrow.bounds.size.height));
        [self.arrow setTransform:CGAffineTransformConcat(scale, rotate)];
        [self.boderArrow setTransform:CGAffineTransformConcat(scale, rotate)];
        
        self.currentRotateValue =f+90;
        self.currentScaleValue = distance/self.arrow.bounds.size.height;
    }
    if (self.typeOfBubble == 2|| self.typeOfBubble == 6) {
        CGPoint p0 = self.centerOfPanView;
        CGPoint p1 = center;
        CGFloat f = [self pointPairToBearingDegrees:p0 secondPoint:p1];
        
        float distance = [self distanceBetweenTwoPoints:self.centerOfPanView andWith:center];
        
        CGAffineTransform rotate = CGAffineTransformMakeRotation(DEGREES_TO_RADIANS(f+90));
        
        CGRect bounds = self.arrow.bounds;
        bounds.size.height = distance;
        
        self.arrow.bounds = bounds;
        self.boderArrow.bounds = bounds;
        [self.arrow setNeedsDisplay];
        [self.boderArrow setNeedsDisplay];
        
        [self.arrow setTransform:rotate];
        [self.boderArrow setTransform:rotate];
        
        self.currentRotateValue =f+90;
        self.currentScaleValue = distance/self.arrow.bounds.size.height;
    }
    
}

#pragma mark - Funtion progress

-(void)reloadView
{
    [self.frameOval setNeedsDisplay];
    [self.boderArrow setNeedsDisplay];
    [self.arrow setNeedsDisplay];
    
    [self.delegate SetCenterWhenResizeView:self];
    
    CGPoint ct = [self convertPoint:self.panGetLocationView.center fromView:self.arrow];
    [self.delegate VMBubbleText:self changeAllViewWheResizeWithCenter:[self.superview convertPoint:ct fromView:self]];
    [self initTextbox];
    
    [self.textView setFrame:CGRectMake(0,0, CGRectGetWidth(self.viewTextView.bounds),CGRectGetHeight(self.viewTextView.bounds))];
    [self.textView sizeToFit];
    [self.textView layoutIfNeeded];
    [self.textView setCenter:CGPointMake(CGRectGetWidth(self.viewTextView.bounds)/2,CGRectGetHeight(self.viewTextView.bounds)/2)];
}

- (CGFloat) distanceBetweenTwoPoints:(CGPoint) point1 andWith:(CGPoint) point2
{
    return sqrt((point1.x - point2.x) * (point1.x - point2.x) + (point1.y-point2.y)*(point1.y-point2.y));
}

- (CGFloat) pointPairToBearingDegrees:(CGPoint)startingPoint secondPoint:(CGPoint) endingPoint
{
    CGPoint originPoint = CGPointMake(endingPoint.x - startingPoint.x, endingPoint.y - startingPoint.y);
    float bearingRadians = atan2f(originPoint.y, originPoint.x);
    float bearingDegrees = bearingRadians * (180.0 / M_PI);
    bearingDegrees = (bearingDegrees > 0.0 ? bearingDegrees : (360.0 + bearingDegrees));
    return bearingDegrees;
}

-(CGPoint)returnCenterLocationView
{
    CGPoint ct = [self convertPoint:self.panGetLocationView.center fromView:self.arrow];
    return [self.superview convertPoint:ct fromView:self];
}

-(void)showPanResizeView
{
    [UIView animateWithDuration:0.3 animations:^{
        
        [self.panResizeView setAlpha:1];
    } completion:^(BOOL finished) {
        
    }];
}

-(void)hidePanResizeView
{
    [UIView animateWithDuration:0.3 animations:^{
        [self.panResizeView setAlpha:0];
    } completion:^(BOOL finished) {
    }];
}

-(void)changeBackgroundColor
{
    [self.frameOval setBackgroundColor:self.backgroundColor];
    [self.arrow setBackgroundColor:self.backgroundColor];
    [self.boderArrow setBackgroundColor:self.backgroundColor];
    [self.textView setBackgroundColor:self.backgroundColor];
    
    [self.frameOval setNeedsDisplay];
    [self.arrow setNeedsDisplay];
    [self.boderArrow setNeedsDisplay];
}

-(void)changeBoderColor
{
    [self.frameOval setBoderColor:self.boderColor];
    [self.boderArrow setBoderColor:self.boderColor];
    
    [self.frameOval setNeedsDisplay];
    [self.boderArrow setNeedsDisplay];
}

#pragma mark - gesture
-(void)clickBubble:(UITapGestureRecognizer*)tapGesture
{
    CGPoint ct = [self convertPoint:self.panGetLocationView.center fromView:self.arrow];
    [self.delegate VMBubbleText:self getCenterArrowInViewCenter:[self.superview convertPoint:ct fromView:self]];
}

-(void)panResizeView:(UIPanGestureRecognizer*)pan
{
    switch (pan.state) {
        case UIGestureRecognizerStateBegan:
        {
            [self.delegate GetCenterView:self];
            break;
        }
        case UIGestureRecognizerStateChanged:
        {
            if([pan locationInView:self].x >= minimumResize && [pan locationInView:self].y >= minimumResize)
            {
                float width = pan.view.center.x + 15;
                float height = pan.view.center.y + 15;
                
                pan.view.center = [pan locationInView:self];
                
                
                self.frame = CGRectMake(self.frame.origin.x, self.frame.origin.y, width, height);
                [self.frameOval setFrame:CGRectMake(self.frameOval.frame.origin.x, self.frameOval.frame.origin.y, width, height)];
                
                [self.frameOval setCenter:CGPointMake(width/2, height/2)];
                [self.boderArrow setCenter:CGPointMake(width/2, height/2)];
                [self.arrow setCenter:CGPointMake(width/2, height/2)];
                
                CGAffineTransform rotate = CGAffineTransformMakeRotation(DEGREES_TO_RADIANS(self.currentRotateValue));
                CGAffineTransform scale = CGAffineTransformMakeScale(1, self.currentScaleValue);
                [self.arrow setTransform:CGAffineTransformConcat(scale, rotate)];
                [self.boderArrow setTransform:CGAffineTransformConcat(scale, rotate)];
                
                [self reloadView];
            }
            else
            {
                if (pan.view.center.x <minimumResize && pan.view.center.y <minimumResize) {
                    pan.view.center = CGPointMake(minimumResize, minimumResize);
                }
                else
                    if (pan.view.center.x < minimumResize) {
                        pan.view.center = CGPointMake(minimumResize, [pan locationInView:self].y);
                    }
                    else
                        if (pan.view.center.y <minimumResize) {
                            pan.view.center = CGPointMake([pan locationInView:self].x, minimumResize);
                        }
            }
            break;
        }
        case UIGestureRecognizerStateEnded:
        {
            float width = pan.view.center.x + 15;
            float height = pan.view.center.y + 15;
            
            CGRect screenRect = [[UIScreen mainScreen] bounds];
            CGFloat screenWidth = screenRect.size.width;
            CGFloat screenHeight = screenRect.size.height;
            
            if (width >= screenWidth+25) {
                width = screenWidth+20;
                pan.view.center = CGPointMake(screenWidth, [pan locationInView:self].y) ;
            }
            
            if (height >= screenHeight+25) {
                height = screenHeight+20;
                pan.view.center = CGPointMake([pan locationInView:self].x, screenHeight) ;
            }
            
            self.frame = CGRectMake(self.frame.origin.x, self.frame.origin.y, width, height);
            [self.frameOval setFrame:CGRectMake(self.frameOval.frame.origin.x, self.frameOval.frame.origin.y, width, height)];
            
            [self.frameOval setCenter:CGPointMake(width/2, height/2)];
            [self.boderArrow setCenter:CGPointMake(width/2, height/2)];
            [self.arrow setCenter:CGPointMake(width/2, height/2)];
            
            CGAffineTransform rotate = CGAffineTransformMakeRotation(DEGREES_TO_RADIANS(self.currentRotateValue));
            CGAffineTransform scale = CGAffineTransformMakeScale(1, self.currentScaleValue);
            [self.arrow setTransform:CGAffineTransformConcat(scale, rotate)];
            [self.boderArrow setTransform:CGAffineTransformConcat(scale, rotate)];
            
            [self reloadView];
            
            break;
        }
        default:
            break;
    }
}

#pragma mark - textfield delegate
-(void)textViewDidChange:(UITextView *)textView
{
    
    CGSize heightText = [self getContentSize:textView];
    
    NSLog(@"textview content size height: %f , size frame: %f",heightText.height,self.frame.size.height/2);
    
    
    if (heightText.height >= self.frame.size.height/2) {
        
        float width = self.frame.size.width;
        float height = self.frame.size.height+29;
        
        self.frame = CGRectMake(self.frame.origin.x, self.frame.origin.y, width, height);
        [self.frameOval setFrame:CGRectMake(self.frameOval.frame.origin.x, self.frameOval.frame.origin.y, width, height)];
        
        [self.frameOval setCenter:CGPointMake(width/2, height/2)];
        [self.boderArrow setCenter:CGPointMake(width/2, height/2)];
        [self.arrow setCenter:CGPointMake(width/2, height/2)];
        
        CGAffineTransform rotate = CGAffineTransformMakeRotation(DEGREES_TO_RADIANS(self.currentRotateValue));
        CGAffineTransform scale = CGAffineTransformMakeScale(1, self.currentScaleValue);
        [self.arrow setTransform:CGAffineTransformConcat(scale, rotate)];
        [self.boderArrow setTransform:CGAffineTransformConcat(scale, rotate)];
        [self.panResizeView setCenter:CGPointMake(self.frameOval.frame.size.width - 15, self.frameOval.frame.size.height - 15)];
        [self reloadView];
    }
}

-(CGSize) getContentSize:(UITextView*) myTextView{
    return [myTextView sizeThatFits:CGSizeMake(myTextView.frame.size.width, FLT_MAX)];
}

-(void)textViewDidBeginEditing:(UITextView *)textView
{
    self.currentRectOfTextView = self.frame;
}

-(void)textViewDidEndEditing:(UITextView *)textView
{
    [self.textView setFrame:CGRectMake(0,0, CGRectGetWidth(self.viewTextView.bounds),CGRectGetHeight(self.viewTextView.bounds))];
    [self.textView sizeToFit];
    [self.textView layoutIfNeeded];
    [self.textView setCenter:CGPointMake(CGRectGetWidth(self.viewTextView.bounds)/2,CGRectGetHeight(self.viewTextView.bounds)/2)];
    [self.delegate HidekeyboardInView:self];
}

-(BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text
{
    [self.textView setFrame:CGRectMake(0,0, CGRectGetWidth(self.viewTextView.bounds),CGRectGetHeight(self.viewTextView.bounds))];
    [self.textView layoutIfNeeded];
    [self.textView setCenter:CGPointMake(CGRectGetWidth(self.viewTextView.bounds)/2,CGRectGetHeight(self.viewTextView.bounds)/2)];
    return YES;
}

@end
