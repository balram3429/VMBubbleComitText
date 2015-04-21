//
//  VMColorPickerView.h
//  Picapp
//
//  Created by Vu Mai on 4/12/15.
//  Copyright (c) 2015 VuMai. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol VMColorPickerViewDelegate;
@interface VMColorPickerView : UIView
@property (nonatomic) id<VMColorPickerViewDelegate> delegate;
-(void)setPikerName:(NSString*)str;
@end

@protocol VMColorPickerViewDelegate <NSObject>

@required
-(void)VMColorPickerViewClickReturnColor:(VMColorPickerView*)colorPicker withReturnColor:(UIColor*)color;

@end