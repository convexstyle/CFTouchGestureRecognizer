//
//  CFTouchGestureRecognizer.h
//  PopCamera
//
//  Created by convexstyle on 23/08/13.
//  Copyright (c) 2013 convexstyle. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CFTouchGestureRecognizer;
typedef void(^CFTouchDownBlock) (CFTouchGestureRecognizer *recognizer, NSSet *touches, UIEvent *event);
typedef void(^CFTouchMovedBlock) (CFTouchGestureRecognizer *recognizer, NSSet *touches, UIEvent *event);
typedef void(^CFTouchCancelledBlock) (CFTouchGestureRecognizer *recognizer, NSSet *touches, UIEvent *event);
typedef void(^CFTouchUpInsideBlock) (CFTouchGestureRecognizer *recognizer, NSSet *touches, UIEvent *event);
typedef void(^CFTouchUpOutsideBlock) (CFTouchGestureRecognizer *recognizer, NSSet *touches, UIEvent *event);

@interface CFTouchGestureRecognizer : UIGestureRecognizer

- (id)initWithTouchDownBlock:(CFTouchDownBlock)aTouchDownBlock touchMovedBlock:(CFTouchMovedBlock)aTouchMovedBlock touchUpBlock:(CFTouchUpInsideBlock)aTouchUpInsideBlock touchUpOutsideBlock:(CFTouchUpOutsideBlock)aTouchUpOutsideBlock touchCancelledBlock:(CFTouchCancelledBlock)aTouchCancelledBlock;

@end
