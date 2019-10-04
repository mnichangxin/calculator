#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) NSString *displayContent;
@property (weak, nonatomic) IBOutlet UILabel *display;
@property (weak, nonatomic) IBOutlet UIButton *allClearButton;
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *numbericButtons;

- (IBAction)numbericButtonClick:(id)sender;
- (IBAction)allClearButtonClick:(id)sender;

@end
