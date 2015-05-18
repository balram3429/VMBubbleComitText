//
//  VMEditView.h
//  Picapp
//
//  Created by Vu Mai on 4/12/15.
//  Copyright (c) 2015 VuMai. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol VMEditViewDelegate;
@interface VMEditView : UIView

@property (nonatomic) id<VMEditViewDelegate> delegate;

@end


@protocol VMEditViewDelegate <NSObject>

@required
-(void)VMEditViewClickButContentText:(VMEditView*)editView;
-(void)VMEditViewClickButTextColor:(VMEditView*)editView;
-(void)VMEditViewClickButBackgroundColor:(VMEditView*)editView;
-(void)VMEditViewClickButBoderColor:(VMEditView*)editView;
-(void)VMEditViewClickButRemove:(VMEditView*)editView;

@end


