//
//  VMBubbleText.h
//  VMBubbleComitText
//
//  Created by Vu Mai on 4/20/15.
//  Copyright (c) 2015 VuMai. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "VMFrame.h"
#import "VMBoderArrow.h"
#import "VMArrow.h"


@protocol VMBubbleTextDelegate;
@interface VMBubbleText : UIView <UITextViewDelegate>

@property (nonatomic) id<VMBubbleTextDelegate>delegate;
-(void)initBubbleOval;
-(void)initTextbox;

-(void)setCenterOfPanView;
-(void)moveArrowWithCenterPanView:(CGPoint)center;
-(CGPoint)returnCenterLocationView;

@property (nonatomic) UIColor *backgroundColor;
@property (nonatomic) UIColor *boderColor;
@property (nonatomic) UITextView *textView;
@property (nonatomic) NSInteger typeOfBubble;

-(void)editTextWithKeyboard;
-(void)showPanResizeView;
-(void)hidePanResizeView;
-(void)changeBackgroundColor;
-(void)changeBoderColor;
@end


@protocol VMBubbleTextDelegate <NSObject>

@optional
-(void)VMBubbleText:(VMBubbleText*)bubbleTest getCenterArrowInViewCenter:(CGPoint)ct;
-(void)VMBubbleText:(VMBubbleText*)bubbleTest changeAllViewWheResizeWithCenter:(CGPoint)ct;

-(void)HidekeyboardInView:(VMBubbleText*)bubbleTest;
-(void)SetCenterWhenResizeView:(VMBubbleText*)bubbleTest;
-(void)GetCenterView:(VMBubbleText*)bubbleTest;

@end
