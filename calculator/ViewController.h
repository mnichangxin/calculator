#import <UIKit/UIKit.h>

typedef enum {
    OperateTypeNone = 0,
    OperateTypeAddition = 1,
    OperateTypeSubtraction = 2,
    OperateTypeMultiplication = 3,
    OperateTypeDivision = 4
} OperateType;

@interface ViewController : UIViewController

@property (nonatomic, copy) NSString *prevText;
@property (nonatomic, copy) NSString *text;
@property (nonatomic, copy) NSString *displayText;
@property (nonatomic, assign) OperateType operateType;
@property (nonatomic, assign) BOOL isEqual;
@property (nonatomic, weak) IBOutlet UILabel *display;
@property (nonatomic, strong) IBOutletCollection(UIButton) NSArray *buttons;

- (IBAction)buttonClick:(id)sender;

@end
