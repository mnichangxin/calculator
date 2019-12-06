#import "ScreenView.h"

@implementation ScreenView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self setFrame:CGRectMake(0, 0, frame.size.width, SCREEM_VIEW_HEIGHT)];
    }
    return self;
}

- (void)layoutSubviews {
    UILabel *screenLabel =  [[UILabel alloc] initWithFrame:CGRectMake(self.frame.origin.x + 20, self.frame.origin.y, self.frame.size.width - 40, self.frame.size.height)];
    [screenLabel setText:@""];
    [screenLabel setTextColor:UIColor.whiteColor];
    [screenLabel setFont:[UIFont systemFontOfSize:38]];
    [screenLabel setTextAlignment:NSTextAlignmentRight];
    [self addSubview:screenLabel];
}

@end
