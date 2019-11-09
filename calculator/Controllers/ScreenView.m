#import "ScreenView.h"

@interface ScreenView ()

@end

@implementation ScreenView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self setFrame:CGRectMake(0, 0, frame.size.width, SCREEM_VIEW_HEIGHT)];
        [self setBackgroundColor:UIColor.brownColor];
    }
    return self;
}

- (void)layoutSubviews {
    UILabel *screenLabel =  [[UILabel alloc] initWithFrame:CGRectMake(self.frame.origin.x + 20, self.frame.origin.y, self.frame.size.width - 40, self.frame.size.height)];
    [screenLabel setText:@"123"];
    [screenLabel setFont:[UIFont systemFontOfSize:38]];
    [screenLabel setTextAlignment:NSTextAlignmentRight];
//    [screenLabel.layer setBorderWidth:1];
//    [screenLabel.layer setBackgroundColor:UIColor.darkGrayColor.CGColor];
    [self addSubview:screenLabel];
}

@end
