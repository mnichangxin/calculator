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
@property (nonatomic, copy) NSString *displayText;
@property (nonatomic, assign) BOOL isEqual;
@property (nonatomic, assign) OperateType operateType;

//@property (nonatomic, weak) IBOutlet UILabel *display;
//@property (nonatomic, strong) IBOutletCollection(UIButton) NSArray *buttons;

- (void)onButtonViewTouch:(UIButton *)sender;

@end
