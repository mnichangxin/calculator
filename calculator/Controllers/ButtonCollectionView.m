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
        NSLog(@"%f", frame.size.height);
        self.buttonGroupCollectionView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height - KMagrinBottom)];
        [self.buttonGroupCollectionView setBackgroundColor:UIColor.blueColor];
        [self addSubview:self.buttonGroupCollectionView];
    }
    return self;
}

//- (void)layoutSubviews {
//    [self.buttonGroupCollectionView setFrame:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height - KMagrinBottom)];
//}

@end
