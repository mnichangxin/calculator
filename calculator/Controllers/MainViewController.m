#import "MainViewController.h"
#import "ScreenView.h"
#import "ButtonCollectionView.h"

@interface MainViewController() <UICollectionViewDelegate, UICollectionViewDataSource>

//@property(nonatomic,weak) UICollectionView *collectionView;
//@property(nonatomic,weak) NSArray *dataSource;

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view setBackgroundColor:UIColor.blackColor];
    [self.view addSubview:[[ScreenView alloc] initWithFrame:<#(CGRect)#>]];
}
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 2;
}
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 10;
}
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    UICollectionViewCell *collectionViewCell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cellid" forIndexPath:indexPath];
    [collectionViewCell setBackgroundColor:UIColor.cyanColor];
    return collectionViewCell;
}

@end
