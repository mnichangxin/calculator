#import "MainViewController.h"
#import "ScreenView.h"
#import "ButtonCollectionView.h"

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view setBackgroundColor:UIColor.blackColor];
    [self.view addSubview:[[ScreenView alloc] initWithFrame:self.view.frame]];
    [self.view addSubview:[[ButtonCollectionView alloc] initWithFrame:self.view.frame]];
}

@end
