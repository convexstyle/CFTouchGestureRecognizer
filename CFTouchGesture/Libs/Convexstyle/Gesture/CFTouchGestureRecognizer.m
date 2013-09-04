//
//  CFTouchGestureRecognizer.m
//  PopCamera
//
//  Created by convexstyle on 23/08/13.
//  Copyright (c) 2013 convexstyle. All rights reserved.
//

#import "CFTouchGestureRecognizer.h"
#import <UIKit/UIGestureRecognizerSubclass.h>

@interface CFTouchGestureRecognizer ()
@property(nonatomic, copy) CFTouchDownBlock touchDownBlock;
@property(nonatomic, copy) CFTouchMovedBlock touchMovedBlock;
@property(nonatomic, copy) CFTouchUpInsideBlock touchUpInsideBlock;
@property(nonatomic, copy) CFTouchUpOutsideBlock touchUpOutsideBlock;
@end


@implementation CFTouchGestureRecognizer


#pragma mark - Life Circle
- (id)initWithTouchDownBlock:(CFTouchDownBlock)aTouchDownBlock touchMovedBlock:(CFTouchMovedBlock)aTouchMovedBlock touchUpBlock:(CFTouchUpInsideBlock)aTouchUpInsideBlock touchUpOutsideBlock:(CFTouchUpOutsideBlock)aTouchUpOutsideBlock
{
    self = [super init];
    if(self) {
        self.touchDownBlock      = aTouchDownBlock;
        self.touchMovedBlock     = aTouchMovedBlock;
        self.touchUpInsideBlock  = aTouchUpInsideBlock;
        self.touchUpOutsideBlock = aTouchUpOutsideBlock;
    }
    return self;
}


#pragma mark - Touch Event Methods
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    if(self.touchDownBlock) {
        self.touchDownBlock(self, touches, event);
    }
}

- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    if(self.touchMovedBlock) {
        self.touchMovedBlock(self, touches, event);
    }
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    UITouch *touch     = [touches anyObject];
    CGPoint touchPoint = [touch locationInView:self.view];
    NSLog(@"touchPoint >>> %@", NSStringFromCGPoint(touchPoint));
    if(CGRectContainsPoint(self.view.bounds, touchPoint)) {// TouchUpInside
        if(self.touchUpInsideBlock) {
            self.touchUpInsideBlock(self, touches, event);
        }
    } else {// TouchUpOutside
        if(self.touchUpOutsideBlock) {
            self.touchUpOutsideBlock(self, touches, event);
        }
    }
}

- (void)touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event
{
    // TODO:
}

@end
