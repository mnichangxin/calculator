#import "ScreenView.h"

@interface ScreenView ()

@end

@implementation ScreenView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self setFrame:CGRectMake(0, 0, frame.size.width, SCREEM_VIEW_HEIGHT)];
        [self setBackgroundColor:UIColor.brownColor];
    }
    return self;
}

@end
