#import "ScreenView.h"

@interface ScreenView ()

@end

@implementation ScreenView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self setFrame:CGRectMake(frame.origin.x, frame.origin.y, frame.size.width, KStatusBarHeight + 100.f)];
        [self setBackgroundColor:UIColor.brownColor];
    }
    return self;
}

@end
