//
//  VMHomeViewController.m
//  VMBubbleComitText
//
//  Created by Vu Mai on 4/20/15.
//  Copyright (c) 2015 VuMai. All rights reserved.
//

#import "VMHomeViewController.h"

@interface VMHomeViewController ()
@property (nonatomic, strong) UIButton *butAddNewBubble;
@property (nonatomic, strong) UIView *viewMenuBubble;
@property (nonatomic) BOOL isShowMenuBubble;

@property (nonatomic) NSInteger numOfBubbleOvalInView;

@property (nonatomic, strong) UIButton *panView;
@property (nonatomic) NSInteger tagCurrentView;
@property (nonatomic) NSInteger tagCurrentAfterHide;
@property (nonatomic) CGPoint currentCenterAfterEditText;
@property (nonatomic) NSInteger heightOfKeyboard;
@property (nonatomic) CGPoint currentCenter;
@property (nonatomic) NSInteger typeOfChange;

@end

@implementation VMHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initImageViewWithContent];
    [self initMenuBar];
    [self initMenuBubble];
    [self setup];
    
    // Do any additional setup after loading the view.
}

-(void)setup
{
    self.numOfBubbleOvalInView = 0;
    [self.viewMenuBubble setAlpha:0];
    self.isShowMenuBubble = NO;
    self.heightOfKeyboard = 216;
    [self initCirclePanView];
    [self initView];
    [self hideEditBubble];
}

-(void)initView
{
    UITapGestureRecognizer*tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(clickMainView:)];
    [self.view addGestureRecognizer:tap];
}

- (void) initImageViewWithContent
{
    self.imgView.image = self.originalImage;
    [self.imgView setBackgroundColor:[UIColor blackColor]];
    
}

-(void)initCirclePanView
{
    UIPanGestureRecognizer *pan = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(move:)];
    
    self.panView = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 50, 50)];
    [self.panView setImage:[UIImage imageNamed:@"IconMove.png"] forState:UIControlStateNormal];
    [self.panView addGestureRecognizer:pan];
    
    [self.view addSubview:self.panView];
}

-(void)initMenuBubble
{
    self.viewMenuBubble = [[UIView alloc] initWithFrame:CGRectMake(0, self.view.frame.size.height - 121, CGRectGetWidth(self.view.bounds), 70)];
    [self.viewMenuBubble setBackgroundColor:[UIColor colorWithRed:54/255.0f green:54/255.0f blue:54/255.0f alpha:1]];
    [self.view addSubview:self.viewMenuBubble];
    
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:self.viewMenuBubble.bounds];
    [self.viewMenuBubble addSubview:scrollView];
    
    NSMutableArray *arr = [NSMutableArray arrayWithArray:[self arrayImageItemBubble]];
    
    for (NSInteger i = 0; i < arr.count; i++)
    {
        UIButton *but = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 60, 60)];
        [but setCenter:CGPointMake(70 * (i+1) - 20,CGRectGetHeight(self.viewMenuBubble.bounds)/2)];
        UIImage *img = (UIImage*)[arr objectAtIndex:i];
        [but setImage:img forState:UIControlStateNormal];
        [but setTag:1000+i];
        [but addTarget:self action:@selector(clickAddBubble:) forControlEvents:UIControlEventTouchUpInside];
        
        [scrollView addSubview:but];
    }
    [scrollView setContentSize:CGSizeMake( 70 * ([self arrayImageItemBubble].count+1) - 20, self.viewMenuBubble.bounds.size.height)];
    
    
}

-(void)initMenuBar
{
    [self.menuBar setBackgroundColor:[UIColor colorWithRed:54/255.0f green:54/255.0f blue:54/255.0f alpha:1]];
    
    self.butAddNewBubble = [[UIButton alloc] initWithFrame:CGRectMake(15, 5, 40, 40)];
    [self.butAddNewBubble setImage:[UIImage imageNamed:@"iconMenuBalloons.png"] forState:UIControlStateNormal];
    [self.butAddNewBubble addTarget:self action:@selector(clickButShowViewBubble:) forControlEvents:UIControlEventTouchUpInside];
    [self.menuBar addSubview:self.butAddNewBubble];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Function progress

-(void)makeBubbleWithType:(NSInteger)type
{
    UIPanGestureRecognizer *pan = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(moveBubble:)];
    VMBubbleOval *draw = [[VMBubbleOval alloc] initWithFrame:CGRectMake(50, 100, 200, 100)];
    
    draw.backgroundColor = [UIColor whiteColor];
    draw.boderColor = [UIColor blackColor];
    draw.typeOfBubble = type;
    [draw initBubbleOval];
    [draw setDelegate:self];
    [draw addGestureRecognizer:pan];
    [draw setTag:2000+self.numOfBubbleOvalInView];
    [draw setUserInteractionEnabled:YES];
    [self.imgView addSubview:draw];
}

-(NSMutableArray *)arrayImageItemBubble
{
    NSMutableArray *array = [NSMutableArray array];
    [array addObject:[UIImage imageNamed:@"iconBubbleCircle.png"]];
    [array addObject:[UIImage imageNamed:@"iconBubbleCloud.png"]];
    [array addObject:[UIImage imageNamed:@"iconBubbleOval.png"]];
    [array addObject:[UIImage imageNamed:@"iconBubbleSquares.png"]];
    [array addObject:[UIImage imageNamed:@"iconBubbleStars.png"]];
    [array addObject:[UIImage imageNamed:@"iconOvalDash.png"]];
    [array addObject:[UIImage imageNamed:@"iconPointer.png"]];
    [array addObject:[UIImage imageNamed:@"iconSquare.png"]];
    return array;
}

-(void)showEditBubble
{
    for (UIView *vi  in self.imgView.subviews) {
        if (vi.tag == self.tagCurrentView) {
            VMBubbleOval*drawBu = (VMBubbleOval*)vi;
            [drawBu showPanResizeView];
            break;
        }
    }
    
    [UIView animateWithDuration:0.3 animations:^{
        [self.editView setAlpha:1];
        [self.panView setAlpha:1];
    } completion:^(BOOL finished) {
        self.isShowEditBubble = YES;
    }];
}

-(void)hideEditBubble
{
    for (UIView *vi  in self.imgView.subviews) {
        if (vi.tag == self.tagCurrentView && vi.tag != 0) {
            VMBubbleOval*drawBu = (VMBubbleOval*)vi;
            [drawBu hidePanResizeView];
            break;
        }
    }
    
    [UIView animateWithDuration:0.3 animations:^{
        [self.editView setAlpha:0];
        [self.panView setAlpha:0];
    } completion:^(BOOL finished) {
        self.isShowEditBubble = NO;
    }];
}

-(void)showColorPicker
{
    [UIView animateWithDuration:0.3 animations:^{
        [self.colorPicker setAlpha:1];
    } completion:^(BOOL finished) {
        self.isShowColorPicker = YES;
    }];
}

-(void)hideColorPicker
{
    [UIView animateWithDuration:0.3 animations:^{
        [self.colorPicker setAlpha:0];
    } completion:^(BOOL finished) {
        self.isShowColorPicker = NO;
    }];
}



#pragma mark - gesture
-(void)clickExport:(UIButton*)sender
{
    [self hideColorPicker];
    [self hideEditBubble];
    
    UIGraphicsBeginImageContextWithOptions(self.imgView.bounds.size, self.imgView.opaque, 0.0);
    [self.imgView.layer renderInContext:UIGraphicsGetCurrentContext()];
    UIImage * screenshot = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    CGRect cropRect = CGRectMake(0 ,0 ,self.imgView.bounds.size.width*2 ,self.imgView.bounds.size.height*2);
    UIGraphicsBeginImageContextWithOptions(cropRect.size, self.imgView.opaque, 1.0f);
    [screenshot drawInRect:cropRect];
    UIImage * customScreenShot = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    UIImageWriteToSavedPhotosAlbum(customScreenShot, nil, nil, nil);
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Success" message:@"" delegate:self cancelButtonTitle:@"OK" otherButtonTitles: nil];
    [alert show];
}

-(void)clickButShowViewBubble:(UIButton*)sender
{
    if (!self.isShowMenuBubble) {
        [UIView animateWithDuration:0.2 animations:^{
            [self.viewMenuBubble setAlpha:1];
        } completion:^(BOOL finished) {
            self.isShowMenuBubble = YES;
        }];
    }
    else
    {
        [UIView animateWithDuration:0.2 animations:^{
            [self.viewMenuBubble setAlpha:0];
        } completion:^(BOOL finished) {
            self.isShowMenuBubble = NO;
        }];
    }
}

- (IBAction)clickButBack:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

-(void)clickAddBubble:(UIButton*)button
{
    if (button.tag == 1000) {
        [self makeBubbleWithType:1];
        self.numOfBubbleOvalInView += 1;
    }
    if (button.tag == 1001) {
        [self makeBubbleWithType:2];
        self.numOfBubbleOvalInView += 1;
    }
    if (button.tag == 1002) {
        [self makeBubbleWithType:3];
        self.numOfBubbleOvalInView += 1;
    }
    if (button.tag == 1003) {
        [self makeBubbleWithType:4];
        self.numOfBubbleOvalInView += 1;
    }
    if (button.tag == 1004) {
        [self makeBubbleWithType:5];
        
        self.numOfBubbleOvalInView += 1;
    }
    if (button.tag == 1005) {
        [self makeBubbleWithType:6];
        self.numOfBubbleOvalInView += 1;
    }
    
    if (button.tag == 1006) {
        [self makeBubbleWithType:7];
        self.numOfBubbleOvalInView += 1;
    }
    if (button.tag == 1007) {
        [self makeBubbleWithType:8];
        self.numOfBubbleOvalInView += 1;
    }
    [self.viewMenuBubble setAlpha:0];
    self.isShowMenuBubble = NO;
}

-(void)move:(UIPanGestureRecognizer*)pan
{
    if( pan.state == UIGestureRecognizerStateChanged){
        pan.view.center = [pan locationInView:self.view];
        
        for (UIView *vi  in self.imgView.subviews) {
            if (vi.tag == self.tagCurrentView) {
                VMBubbleOval*drawBu = (VMBubbleOval*)vi;
                [drawBu moveArrowWithCenterPanView:[drawBu convertPoint:pan.view.center fromView:self.view]];
            }
        }
    }
    if (pan.state == UIGestureRecognizerStateBegan) {
        for (UIView *vi  in self.imgView.subviews) {
            if (vi.tag == self.tagCurrentView) {
                VMBubbleOval*drawBu = (VMBubbleOval*)vi;
                [drawBu setCenterOfPanView];
            }
        }
        
    }
}

-(void)moveBubble:(UIPanGestureRecognizer*)pan
{
    if (pan.state == UIGestureRecognizerStateBegan) {
        self.tagCurrentView = pan.view.tag;
        [self.imgView bringSubviewToFront:pan.view];
        [self.imgView bringSubviewToFront:self.panView];
        [self.imgView bringSubviewToFront:self.editView];
        
        
    }
    if (pan.state == UIGestureRecognizerStateChanged) {
        for (UIView *vi  in self.imgView.subviews) {
            if (vi.tag == self.tagCurrentView) {
                VMBubbleOval*drawBu = (VMBubbleOval*)vi;
                drawBu.center = [pan locationInView:self.view];
                [self.panView setCenter:[drawBu returnCenterLocationView]];
                [self.editView setCenter:CGPointMake(drawBu.center.x, drawBu.center.y - drawBu.bounds.size.height/2 - self.editView.bounds.size.height/2)];
                self.currentCenter = drawBu.center;
                if (drawBu.typeOfBubble == 8) {
                    [self.panView setAlpha:0];
                }
                
            }
        }
    }
}

-(void)clickMainView:(UITapGestureRecognizer*)tap
{
    [self.view endEditing:YES];
    [self hideEditBubble];
    [self hideColorPicker];
}

#pragma mark - VMBubble Delegate
-(void)getCenterArrowInView:(VMBubbleOval *)bubbleTest withCenter:(CGPoint)ct
{
    self.currentCenter = bubbleTest.center;
    
    [self.panView setCenter:ct];
    [self.editView setCenter:CGPointMake(bubbleTest.center.x, bubbleTest.center.y - bubbleTest.bounds.size.height/2 - self.editView.bounds.size.height/2)];
    self.tagCurrentView = bubbleTest.tag;
    
    for (UIView *vi  in self.imgView.subviews) {
        if (vi.tag != self.tagCurrentView && vi.tag >=2000 &&vi.tag<=2100) {
            VMBubbleOval*drawBu = (VMBubbleOval*)vi;
            [drawBu hidePanResizeView];
        }
        if (vi.tag == self.tagCurrentView && vi.tag >=2000 &&vi.tag<=2100) {
            VMBubbleOval*drawBu = (VMBubbleOval*)vi;
            [drawBu showPanResizeView];
        }
    }
    
    if (!self.isShowEditBubble) {
        [self showEditBubble];
        
    }
    
    if (bubbleTest.typeOfBubble == 8) {
        [self.panView setAlpha:0];
    }
    
}

-(void)changeAllViewWheResize:(VMBubbleOval *)bubbleTest withCenter:(CGPoint)ct
{
    [self.panView setCenter:ct];
    [self.editView setCenter:CGPointMake(bubbleTest.center.x, bubbleTest.center.y - bubbleTest.bounds.size.height/2 - self.editView.bounds.size.height/2)];
    self.tagCurrentView = bubbleTest.tag;
}

-(void)hidekeyboardInView:(VMBubbleOval *)bubbleTest
{
    for (UIView *vi  in self.imgView.subviews) {
        if (vi.tag == self.tagCurrentView) {
            
            VMBubbleOval*drawBu = (VMBubbleOval*)vi;
            [UIView animateWithDuration:0.3 animations:^{
                drawBu.center = self.currentCenterAfterEditText;
                [self.panView setCenter:[drawBu returnCenterLocationView]];
                [self.editView setCenter:CGPointMake(drawBu.center.x, drawBu.center.y - drawBu.bounds.size.height/2 - self.editView.bounds.size.height/2)];
            } completion:^(BOOL finished) {
                
            }];
        }
    }
}

-(void)getCenterView:(VMBubbleOval *)bubbleTest
{
    self.currentCenter = bubbleTest.center;
}

-(void)setCenterWhenResizeView:(VMBubbleOval *)bubbleTest
{
    for (UIView *vi  in self.imgView.subviews) {
        if (vi.tag == bubbleTest.tag) {
            VMBubbleOval*drawBu = (VMBubbleOval*)vi;
            [drawBu setCenter:CGPointMake(self.currentCenter.x,self.currentCenter.y)];
        }
    }
}


//
//#pragma mark - keyboard
//- (void)keyboardWasShown:(NSNotification *)notification
//{
//    CGSize keyboardSize = [[[notification userInfo] objectForKey:UIKeyboardFrameBeginUserInfoKey] CGRectValue].size;
//    self.heightOfKeyboard = MIN(keyboardSize.height,keyboardSize.width);
//}

@end
