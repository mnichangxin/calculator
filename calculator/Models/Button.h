#import <UIKit/UIKit.h>

@interface Button : NSObject

@property (nonatomic, strong) NSNumber *tag;
@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) UIColor *color;

- (instancetype)initWithTag:(NSNumber *) tag andTitle:(NSString *)title andColor:(UIColor *)color;

@end
