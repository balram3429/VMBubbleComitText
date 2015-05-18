//
//  VMColorPickerView.m
//  Picapp
//
//  Created by Vu Mai on 4/12/15.
//  Copyright (c) 2015 VuMai. All rights reserved.
//

#import "VMColorPickerView.h"
#define colorRGBA(r,g,b,a) [UIColor colorWithRed:r/255.0f green:g/255.0f blue:b/255.0f alpha:a]
@interface VMColorPickerView()

@property (nonatomic, strong) UIScrollView *scrollView;
@property (nonatomic, strong) UILabel *lbNameOfChange;
@property (nonatomic, strong) UIButton *butMovePickerView;

@end
@implementation VMColorPickerView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self initPicker];
    }
    return self;
}

-(void)initPicker
{
    // scrollview
    self.scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 40, CGRectGetWidth(self.bounds), 60)];
    [self.scrollView setContentSize:CGSizeMake(50 * ([self listColor].count+1)-10, self.bounds.size.height/2)];
    [self addViewColorWithValue:[self listColor]];
    [self addSubview:self.scrollView];
    
    // view
    [self setBackgroundColor:colorRGBA(45, 45, 45, 1)];
    
    self.lbNameOfChange = [[UILabel alloc] initWithFrame:CGRectMake(20, 5, 150, 40)];
    [self.lbNameOfChange setFont:[UIFont systemFontOfSize:17]];
    [self.lbNameOfChange setTextColor:[UIColor whiteColor]];
    [self.lbNameOfChange setText:@"Background"];
    [self addSubview:self.lbNameOfChange];
    
    //button move picker view
    self.butMovePickerView = [[UIButton alloc] initWithFrame:CGRectMake(CGRectGetWidth(self.bounds) - 50, 5, 40, 40)];
    [self.butMovePickerView setImage:[UIImage imageNamed:@"iconMoveView.png"] forState:UIControlStateNormal];
    [self addSubview:self.butMovePickerView];
    
}

-(void)addViewColorWithValue:(NSMutableArray *)arrColor
{
    for (NSInteger i = 0; i<arrColor.count; i++) {
        
        UIColor *color = (UIColor *)[arrColor objectAtIndex:i];
        UIButton *viewColor = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 40, 40)];
        viewColor.center = CGPointMake( 50 * (i+1) - 10, CGRectGetHeight(self.scrollView.bounds)/2);
        [viewColor setBackgroundColor:color];
        [viewColor.layer setCornerRadius:20];
        [viewColor.layer setBorderColor:[[UIColor whiteColor] CGColor]];
        [viewColor.layer setBorderWidth:1];
        [viewColor setTag:100+i];
        [viewColor addTarget:self action:@selector(clickButColor:) forControlEvents:UIControlEventTouchUpInside];
        
        [self.scrollView addSubview:viewColor];
        
    }
}

-(NSMutableArray*)listColor
{
    NSMutableArray *arr = [NSMutableArray array];
    
    [arr addObject:colorRGBA(26, 188, 156,1)];
    [arr addObject:colorRGBA(46, 204, 113,1.0)];
    [arr addObject:colorRGBA(52, 152, 219,1.0)];
    [arr addObject:colorRGBA(155, 89, 182,1.0)];
    [arr addObject:colorRGBA(52, 73, 94,1.0)];
    [arr addObject:colorRGBA(22, 160, 133,1.0)];
    [arr addObject:colorRGBA(39, 174, 96,1.0)];
    [arr addObject:colorRGBA(41, 128, 185,1.0)];
    [arr addObject:colorRGBA(142, 68, 173,1.0)];
    [arr addObject:colorRGBA(44, 62, 80,1.0)];
    [arr addObject:colorRGBA(241, 196, 15,1.0)];
    [arr addObject:colorRGBA(230, 126, 34,1.0)];
    [arr addObject:colorRGBA(231, 76, 60,1.0)];
    [arr addObject:colorRGBA(149, 165, 166,1.0)];
    [arr addObject:colorRGBA(127, 140, 141,1.0)];
    [arr addObject:colorRGBA(192, 57, 43,1.0)];
    [arr addObject:[UIColor blackColor]];
    [arr addObject:[UIColor whiteColor]];
    
    return arr;
}

-(void)setPikerName:(NSString*)str
{
    [self.lbNameOfChange setText:str];
}

#pragma mark - gesture , user action
-(void)clickButColor:(UIButton*)sender
{
    [sender.layer setBorderWidth:5];
    for (UIButton *but in self.scrollView.subviews) {
        if (but.tag != sender.tag) {
            [but.layer setBorderWidth:1];
        }
    }
    [self.delegate VMColorPickerViewClickReturnColor:self withReturnColor:sender.backgroundColor];
}


@end
