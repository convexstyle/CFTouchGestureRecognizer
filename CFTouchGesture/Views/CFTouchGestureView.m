//
//  CFTouchGestureView.m
//  CFTouchGesture
//
//  Created by convexstyle on 26/08/13.
//  Copyright (c) 2013 convexstyle. All rights reserved.
//

#import "CFTouchGestureView.h"

@implementation CFTouchGestureView {
    UILabel *_label;
}


#pragma mark - Life Circle
- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialize
        self.backgroundColor = [UIColor redColor];
        
        //--- Views ---//
        _label                 = [[UILabel alloc] initWithFrame:CGRectZero];
        _label.textColor       = [UIColor whiteColor];
        _label.backgroundColor = [UIColor clearColor];
        _label.font            = [UIFont systemFontOfSize:14.0f];
        _label.text            = @"Tap Me !";
        [_label sizeToFit];
        [self addSubview:_label];
        
        //--- TapGesture Recognizer ---//
    }
    
    return self;
}


@end
