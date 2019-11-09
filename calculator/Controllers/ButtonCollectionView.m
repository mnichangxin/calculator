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
    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, self.frame.size.width / 4, self.frame.size.height / 5)];
    [button setTitle:@"1" forState:UIControlStateNormal];
    [button.layer setBorderColor:UIColor.blackColor.CGColor];
    [button.layer setBorderWidth:1];
    [self addSubview:button];
    
}

@end
