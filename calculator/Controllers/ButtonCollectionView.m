#import "ButtonCollectionView.h"

@interface ButtonCollectionView ()

@end

@implementation ButtonCollectionView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self setFrame:CGRectMake(frame.origin.x, frame.origin.y + SCREEM_VIEW_HEIGHT, frame.size.width, frame.size.height - SCREEM_VIEW_HEIGHT)];
        [self setBackgroundColor:UIColor.grayColor];
    }
    return self;
}

@end
