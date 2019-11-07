#import "ScreenView.h"

@interface ScreenView ()

@end

@implementation ScreenView

- (instancetype)init
{
    self = [super init];
    if (self) {
        <#statements#>
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        UIView *superView = self.superview;
        CGFloat scX = superView.bounds.origin.x;
        CGFloat scY = superView.bounds.origin.y;
        CGFloat scWidth = superView.bounds.size.width;
        CGFloat scHeight = 100.f;
        [self setBounds:CGRectMake(scX, scY, scWidth, scHeight)];
        [self setBackgroundColor:UIColor.brownColor];
    }
    return self;
}

@end
