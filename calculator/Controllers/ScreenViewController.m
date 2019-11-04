#import "ScreenViewController.h"

@interface ScreenViewController ()

@end

@implementation ScreenViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    CGFloat scWidth = self.view.superview.bounds.size.width;
    CGFloat scHeight = 100.f;
//    [[self view];
    UILabel *label = [[UILabel alloc] init];
    [label setText:@"ScreenView"];
    [label setTextColor:UIColor.whiteColor];
    [label setFrame:CGRectMake(0, 0, 100, 100)];
    [[self view] addSubview:label];
}

@end
