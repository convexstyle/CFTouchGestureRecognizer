//
//  CFTouchGestureViewController.m
//  CFTouchGesture
//
//  Created by convexstyle on 26/08/13.
//  Copyright (c) 2013 convexstyle. All rights reserved.
//

#import "CFTouchGestureViewController.h"

@interface CFTouchGestureViewController ()

@end

@implementation CFTouchGestureViewController

#pragma mark - Life Circle
- (id)init
{
    self = [super init];
    if(self) {
        self.title = @"TouchGestureRecognizer";
    }
    return self;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)loadView
{
    //--- View ---//
    UIView *mainView         = [[UIView alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    mainView.backgroundColor = [UIColor whiteColor];
    self.view                = mainView;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //--- Views ---//
    // GestureView
    CFTouchGestureView *touchGestureView = [[CFTouchGestureView alloc] initWithFrame:CGRectMake(0, 0, 300, 300)];
    touchGestureView.center              = CGPointMake(self.view.bounds.size.width / 2, self.view.bounds.size.height / 2);
    [self.view addSubview:touchGestureView];
    
    // Copy
    UILabel *copyLabel        = [[UILabel alloc] initWithFrame:CGRectZero];
    copyLabel.text            = [@"by convexstyle" uppercaseString];
    copyLabel.textColor       = [UIColor blackColor];
    copyLabel.backgroundColor = [UIColor clearColor];
    copyLabel.font            = [UIFont fontWithName:@"HelveticaNeue" size:12.0f];
    [copyLabel sizeToFit];
    copyLabel.center          = CGPointMake(self.view.bounds.size.width - copyLabel.bounds.size.width / 2 - 5, self.view.bounds.size.height - copyLabel.bounds.size.height - 15);
    [self.view addSubview:copyLabel];
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
}

- (void)dealloc
{
    
}


#pragma mark - Memory Related Methods
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
