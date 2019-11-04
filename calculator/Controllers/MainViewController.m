#import "MainViewController.h"
#import "ScreenViewController.h"
#import "ButtonCollection.h"

@interface MainViewController() <UICollectionViewDelegate, UICollectionViewDataSource>

//@property(nonatomic,weak) UICollectionView *collectionView;
//@property(nonatomic,weak) NSArray *dataSource;

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [[self view] setBackgroundColor:UIColor.blackColor];
//    [[self view] addSubview:[[[ScreenViewController alloc] init] view]];
//    [self setView:[[ScreenViewController alloc] init]];
    
//    UICollectionViewFlowLayout l;;;;;;;;;ll;l*layout = [[UICollectionViewFlowLayout alloc] init];
//    [layout setScrollDirection:UICollectionViewScrollDirectionHorizontal];
//    [layout setItemSize:CGSizeMake(100, 100)];
//    [layout setMinimumInteritemSpacing:10.0];
//
//    UICollectionView *collectionView = [[UICollectionView alloc] initWithFrame:[[self view] frame] collectionViewLayout:layout];
//    [collectionView setDelegate:self];
//    [collectionView setDataSource:self];
//    [collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:@"cellid"];
    
//    [[self view] addSubview:collectionView];
//    [[self view] addSubview:[[[ScreenViewController alloc] init] view]];
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
