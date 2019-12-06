#import "MainViewController.h"

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setScreenView:[[ScreenView alloc] initWithFrame:self.view.frame]];
    [self setButtonCollectionView:[[ButtonCollectionView alloc] initWithFrame:self.view.frame]];
    [[self view] setBackgroundColor:UIColor.blackColor];
    [[self view] addSubview:[self screenView]];
    [[self view] addSubview:[self buttonCollectionView]];
}

- (void)onButtonViewTouch:(UIButton *)sender {
    NSLog(@"%li", sender.tag);
}

@end
