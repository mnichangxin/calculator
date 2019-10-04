#import "ViewController.h"

@implementation ViewController

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    return self;
}
- (void)updateDisplay:(bool)isWithPrevDisplayContent {
    NSString *prevDisplayContent = @"";
    if (isWithPrevDisplayContent) {
        prevDisplayContent = [self.display text];
    }
    NSString *nextDisplayContent = [NSString stringWithFormat:@"%@%@", prevDisplayContent, self.displayContent];
    [self.display setText:nextDisplayContent];
}
- (IBAction)numbericButtonClick:(id)sender {
    UIButton *button = (UIButton *) sender;
    [self setDisplayContent:[[button titleLabel] text]];
    [self updateDisplay:YES];
}
- (IBAction)allClearButtonClick:(id)sender {
    [self setDisplayContent:@""];
    [self updateDisplay:NO];
}

@end
