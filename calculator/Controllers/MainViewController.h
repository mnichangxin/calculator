#import <UIKit/UIKit.h>
#import "ScreenView.h"
#import "ButtonCollectionView.h"

typedef enum {
    OperateTypeNone = 0,
    OperateTypeAddition = 1,
    OperateTypeSubtraction = 2,
    OperateTypeMultiplication = 3,
    OperateTypeDivision = 4
} OperateType;

@interface MainViewController : UIViewController

@property(nonatomic, strong) ScreenView *screenView;
@property(nonatomic, strong) ButtonCollectionView *buttonCollectionView;

@property (nonatomic, copy) NSString *prevText;
@property (nonatomic, copy) NSString *text;
@property (nonatomic, copy) NSString *screenLabelText;
@property (nonatomic, assign) BOOL isEqual;
@property (nonatomic, assign) OperateType operateType;

- (void)onButtonViewTouch:(UIButton *)sender;

@end
