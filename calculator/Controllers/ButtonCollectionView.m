#import "ButtonCollectionView.h"

@interface ButtonCollectionView ()

@end

@implementation ButtonCollectionView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self setFrame:CGRectMake(frame.origin.x, frame.origin.y + 100.f, frame.size.width, frame.size.height - 100.f)];
        [self setBackgroundColor:UIColor.grayColor];
    }
    return self;
}

@end
