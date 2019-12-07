#import <UIKit/UIKit.h>

@interface ScreenView : UIView

@property(nonatomic, strong) UILabel *screenLabel;

- (void)updateLabelTextWithScreenLabelText:(NSString *)screenLabelText;

@end
