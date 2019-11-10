#import "ButtonCollectionView.h"

@interface ButtonCollectionView ()

@property(nonatomic, strong) UIView *buttonGroupCollectionView;

@end

@implementation ButtonCollectionView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self setFrame:CGRectMake(0, SCREEM_VIEW_HEIGHT, frame.size.width, frame.size.height - SCREEM_VIEW_HEIGHT)];
        [self setBackgroundColor:UIColor.grayColor];
        self.buttonGroupCollectionView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height - KMagrinBottom)];
        [self.buttonGroupCollectionView setBackgroundColor:UIColor.linkColor];
        [self addSubview:self.buttonGroupCollectionView];
    }
    return self;
}

- (void)layoutSubviews {
    CGFloat margin = 10.f;
    CGFloat width = (self.frame.size.width - margin * 5) / 4;
    for (int i = 1; i <= 20; i++) {
        CGFloat x = i % 4 > 0 ? width * (i % 4 - 1) + margin * (i % 4) : width * 3 + margin * 4;
        CGFloat y = i % 4 > 0 ? width * (i / 4) + margin * (i / 4 + 1) : width * (i / 4 - 1) + margin * (i / 4);
        UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(x, y, width, width)];
        [button setTitle:[NSString stringWithFormat:@"%d", i] forState:UIControlStateNormal];
        [button.layer setBorderColor:UIColor.blackColor.CGColor];
        [button.layer setBorderWidth:1];
        [button.layer setCornerRadius:width / 2];
        [self addSubview:button];
    }
}

@end
