#import "ViewController.h"

@implementation ViewController

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.questions = @[@"1 + 1 = ?", @"Where's the capital of China?", @"From what's cognac made?"];
        self.answers = @[@"2", @"Beijing", @"Grapes"];
    }
    return self;
}
- (IBAction)showQuestion:(id)sender {
    self.currentQuestionIndex++;
    if (_currentQuestionIndex == [self.questions count]) {
        self.currentQuestionIndex = 0;
    }
    NSString *question = [self.questions objectAtIndex:self.currentQuestionIndex];
    self.questionLabel.text = question;
    self.answerLabel.text = @"???";
}
- (IBAction)showAnswer:(id)sender {
    NSString *answer = [self.answers objectAtIndex:self.currentQuestionIndex];
    self.answerLabel.text = answer;
}

@end
