//
//  VMEditView.m
//  Picapp
//
//  Created by Vu Mai on 4/12/15.
//  Copyright (c) 2015 VuMai. All rights reserved.
//

#import "VMEditView.h"

@interface VMEditView()<UIAlertViewDelegate>

@property (nonatomic, strong) UIView *viewEditMenu;

@end

@implementation VMEditView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self initEditView];
    }
    return self;
}

-(void)initEditView
{
    self.viewEditMenu = [[UIView alloc] initWithFrame:self.bounds];
    [self.viewEditMenu.layer setCornerRadius:5];
    [self.viewEditMenu.layer setBackgroundColor:[[[UIColor lightGrayColor] colorWithAlphaComponent:0.8] CGColor]];
    
    [self addSubview:self.viewEditMenu];
    [self initButtonInView];
}

-(void)initButtonInView
{
    UIButton *butContentText = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 40, 40)];
    [butContentText setImage:[UIImage imageNamed:@"iconTextContent.png"] forState:UIControlStateNormal];
    [butContentText setCenter:CGPointMake(30, self.bounds.size.height/2)];
    [butContentText addTarget:self action:@selector(clickButContentText:) forControlEvents:UIControlEventTouchUpInside];
    [self.viewEditMenu addSubview:butContentText];
    
    UIButton *butChangeTextColor = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 40, 40)];
    [butChangeTextColor setImage:[UIImage imageNamed:@"iconTextEdit.png"] forState:UIControlStateNormal];
    [butChangeTextColor setCenter:CGPointMake(70, self.bounds.size.height/2)];
    [butChangeTextColor addTarget:self action:@selector(clickButChangeTextColor:) forControlEvents:UIControlEventTouchUpInside];
    [self.viewEditMenu addSubview:butChangeTextColor];
    
    UIButton *changeBackgroundColor = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 40, 40)];
    [changeBackgroundColor setImage:[UIImage imageNamed:@"iconChangeBackgroundBubble.png"] forState:UIControlStateNormal];
    [changeBackgroundColor setCenter:CGPointMake(110, self.bounds.size.height/2)];
    [changeBackgroundColor addTarget:self action:@selector(clickButChangeBackgroundColor:) forControlEvents:UIControlEventTouchUpInside];
    [self.viewEditMenu addSubview:changeBackgroundColor];
    
    UIButton *butChangeBoderColor = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 40, 40)];
    [butChangeBoderColor setImage:[UIImage imageNamed:@"iconChangeBoderColor.png"] forState:UIControlStateNormal];
    [butChangeBoderColor setCenter:CGPointMake(150, self.bounds.size.height/2)];
    [butChangeBoderColor addTarget:self action:@selector(clickButChangeBoderColor:) forControlEvents:UIControlEventTouchUpInside];
    [self.viewEditMenu addSubview:butChangeBoderColor];
    
    UIButton *butRemove = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 40, 40)];
    [butRemove setImage:[UIImage imageNamed:@"iconRemoveBubble.png"] forState:UIControlStateNormal];
    [butRemove setCenter:CGPointMake(205, self.bounds.size.height/2)];
    [butRemove addTarget:self action:@selector(clickButRemove:) forControlEvents:UIControlEventTouchUpInside];
    [self.viewEditMenu addSubview:butRemove];
}

-(void)clickButContentText:(UIButton*)sender
{
    [self.delegate VMEditViewClickButContentText:self];
}

-(void)clickButChangeTextColor:(UIButton*)sender
{
    [self.delegate VMEditViewClickButTextColor:self];
}

-(void)clickButChangeBackgroundColor:(UIButton*)sender
{
    [self.delegate VMEditViewClickButBackgroundColor:self];
}

-(void)clickButChangeBoderColor:(UIButton*)sender
{
    [self.delegate VMEditViewClickButBoderColor:self];
}

-(void)clickButRemove:(UIButton*)sender
{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Remove Balloon!" message:@"Do you want's to remove balloon" delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:@"OK", nil];
    [alert show];
}

-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    if (buttonIndex == 1) {
        [self.delegate VMEditViewClickButRemove:self];
    }
}

@end
