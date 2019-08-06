#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (nonatomic) int currentQuestionIndex;
@property (nonatomic, copy) NSArray *questions;
@property (nonatomic, copy) NSArray *answers;

@property (nonatomic, weak) IBOutlet UILabel *questionLabel;
@property (nonatomic, weak) IBOutlet UILabel *answerLabel;
@property (nonatomic, weak) IBOutlet UIButton *showQuestionButton;
@property (nonatomic, weak) IBOutlet UIButton *showAnswerButton;

//- (IBAction)showQuestion:(id)sender;
//- (IBAction)showAnswer:(id)sender;

@end
