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
    UIView *mainView         = [[UIView alloc] initWithFrame:self.parentViewController.view.bounds];
    mainView.backgroundColor = [UIColor whiteColor];
    self.view                = mainView;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //--- Views ---//
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
