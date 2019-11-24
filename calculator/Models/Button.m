#import "Button.h"

@implementation Button

- (void)initWithTag:(NSNumber *) tag andTitle:(NSString *)title andColor:(UIColor *)color {
    [self setTag:tag];
    [self setTitle:title];
    [self setColor:color];
}

@end

