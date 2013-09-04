## CFTouchGestureRecognizer


CFTouchGestureRecognizer includes all [touch events](https://developer.apple.com/library/ios/documentation/uikit/reference/UIResponder_Class/Reference/Reference.html) (touchesBegan:withEvent:, touchesMoved:withEvent:, touchesEnded:withEvent:, touchesCancelled:withEvent:) and uses blocks instead of delegate methods so that it is easy to implement it in your custom view class. **If you don't want to use UIButton or touch events and other gesture recognizers are not enough, then, CFTouchGestureRecognizer might be helpful.**  


In your custom view, you can write something like this.
<pre>
CFTouchGestureRecognizer *touchGestureRecognizer = [[CFTouchGestureRecognizer alloc] initWithTouchDownBlock:^(CFTouchGestureRecognizer *recognizer, NSSet *touches, UIEvent *event) {
  NSLog(@"Touch Down");
} touchMovedBlock:^(CFTouchGestureRecognizer *recognizer, NSSet *touches, UIEvent *event) {
  NSLog(@"Touch Moved");
} touchUpBlock:^(CFTouchGestureRecognizer *recognizer, NSSet *touches, UIEvent *event) {
  NSLog(@"Touch Up Inside");
} touchUpOutsideBlock:^(CFTouchGestureRecognizer *recognizer, NSSet *touches, UIEvent *event) {
  NSLog(@"Touch Up Outside");
} touchCancelledBlock:^(CFTouchGestureRecognizer *recognizer, NSSet *touches, UIEvent *event) {
  NSLog(@"Touch Cancelled");
}];
[self addGestureRecognizer:touchGestureRecognizer];
</pre>
