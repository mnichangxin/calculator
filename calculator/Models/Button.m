#import "Button.h"

@implementation Button

- (instancetype)initWithTag:(NSNumber *) tag andTitle:(NSString *)title andColor:(UIColor *)color {
    self = [super init];
    if (self) {
        [self setTag:tag];
        [self setTitle:title];
        [self setColor:color];
    }
    return self;
}

@end

