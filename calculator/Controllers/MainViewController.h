#import <UIKit/UIKit.h>
#import "ScreenView.h"
#import "ButtonCollectionView.h"

@interface MainViewController : UIViewController

@property(nonatomic, strong) NSString *string;
@property(nonatomic, strong) ScreenView *screenView;
@property(nonatomic, strong) ButtonCollectionView *buttonCollectionView;

- (void)onButtonViewTouch:(UIButton *)sender;

@end
