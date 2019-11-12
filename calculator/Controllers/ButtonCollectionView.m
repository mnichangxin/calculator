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
    NSArray *tags = @[@118, @117, @116, @114, @107, @108, @109, @113, @104, @105, @106, @112, @101, @102, @103, @111, @100, @110, @115];
    
    CGFloat margin = 10.f;
    CGFloat width = (self.frame.size.width - margin * 5) / 4;
     
    for (int i = 1; i <= 20; i++) {
        CGFloat bX = i % 4 > 0 ? width * (i % 4 - 1) + margin * (i % 4) : width * 3 + margin * 4;
        CGFloat bY = i % 4 > 0 ? width * (i / 4) + margin * (i / 4 + 1) : width * (i / 4 - 1) + margin * (i / 4);
        CGFloat bWidth = width;
        
        // Button(0, ., =)
        if (i == 17) {
            bWidth = width * 2;
        } else if (i == 18) {
            bX = width * 2 + margin * 2;
        } else if (i == 19) {
            bX = width * 3 + margin * 3;
        }
        
        UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(bX, bY, bWidth, bWidth)];
        
        [button setTitle:[NSString stringWithFormat:@"%d", i] forState:UIControlStateNormal];
        [button setTag:[tags objectAtIndex:[NSNumber numberWithUnsignedInt:i]]];
        [button.layer setBorderColor:UIColor.blackColor.CGColor];
        [button.layer setBorderWidth:1];
        [button.layer setCornerRadius:width / 2];
        [self addSubview:button];
    }
}

@end
