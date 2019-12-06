#import "ButtonView.h"

@implementation ButtonView

- (instancetype)initWithTag:(NSInteger)tag andTitle:(NSString *)title andBackgroundColor:(UIColor *)backgroundColor {
    self = [super init];
    if (self) {
        [self setTag:tag];
        [self setTitle:title forState:UIControlStateNormal];
        [self setBackgroundColor:backgroundColor];
    }
    return self;
}

@end

