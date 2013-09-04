//
//  CFTouchGestureView.m
//  CFTouchGesture
//
//  Created by convexstyle on 26/08/13.
//  Copyright (c) 2013 convexstyle. All rights reserved.
//

#import "CFTouchGestureView.h"

@implementation CFTouchGestureView


#pragma mark - Life Circle
- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialize
        self.backgroundColor = [UIColor redColor];
        
        //--- Views ---//
        UILabel *label        = [[UILabel alloc] initWithFrame:CGRectZero];
        label.textColor       = [UIColor whiteColor];
        label.backgroundColor = [UIColor clearColor];
        label.font            = [UIFont systemFontOfSize:14.0f];
        label.text            = @"Tap Me !";
        [label sizeToFit];
        label.center = CGPointMake(self.bounds.size.width / 2, self.bounds.size.height / 2);
        [self addSubview:label];
        
        //--- TapGesture Recognizer ---//
        CFTouchGestureRecognizer *touchGestureRecognizer = [[CFTouchGestureRecognizer alloc] initWithTouchDownBlock:^(CFTouchGestureRecognizer *recognizer, NSSet *touches, UIEvent *event) {
            label.text = @"Touch Down";
            [label sizeToFit];
            label.center = CGPointMake(self.bounds.size.width / 2, self.bounds.size.height / 2);
        } touchMovedBlock:^(CFTouchGestureRecognizer *recognizer, NSSet *touches, UIEvent *event) {
            label.text = @"Touch Moved";
            [label sizeToFit];
            label.center = CGPointMake(self.bounds.size.width / 2, self.bounds.size.height / 2);
        } touchUpBlock:^(CFTouchGestureRecognizer *recognizer, NSSet *touches, UIEvent *event) {
            label.text = @"Touch Up Inside";
            [label sizeToFit];
            label.center = CGPointMake(self.bounds.size.width / 2, self.bounds.size.height / 2);
        } touchUpOutsideBlock:^(CFTouchGestureRecognizer *recognizer, NSSet *touches, UIEvent *event) {
            label.text = @"Touch Up Outside";
            [label sizeToFit];
            label.center = CGPointMake(self.bounds.size.width / 2, self.bounds.size.height / 2);
        } touchCancelledBlock:^(CFTouchGestureRecognizer *recognizer, NSSet *touches, UIEvent *event) {
            label.text = @"Touch Cancelled";
            [label sizeToFit];
            label.center = CGPointMake(self.bounds.size.width / 2, self.bounds.size.height / 2);
        }];
        [self addGestureRecognizer:touchGestureRecognizer];
    }
    
    return self;
}


@end
