#import "ScreenView.h"

@implementation ScreenView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self setFrame:CGRectMake(0, 0, frame.size.width, SCREEM_VIEW_HEIGHT)];
        [self setScreenLabel:[[UILabel alloc] initWithFrame:CGRectMake(0, 0, 0, 0)]];
        [self addSubview:[self screenLabel]];
    }
    return self;
}

- (void)layoutSubviews {
    [[self screenLabel] setFrame:CGRectMake(self.frame.origin.x + 20, self.frame.origin.y, self.frame.size.width - 40, self.frame.size.height)];
    [[self screenLabel] setText:@""];
    [[self screenLabel] setTextColor:UIColor.whiteColor];
    [[self screenLabel] setFont:[UIFont systemFontOfSize:38]];
    [[self screenLabel] setTextAlignment:NSTextAlignmentRight];
}

- (void)updateLabelTextWithScreenLabelText:(NSString *)screenLabelText {
    NSLog(@"%@", screenLabelText);
    [[self screenLabel] setText:screenLabelText];
}

@end
