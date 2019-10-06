#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setText:@""];
    [self setPrevText:@""];
    [self setOperateType:OperateTypeNone];
}
- (void)updateDisplayWithText:(NSString *)text {
    [self.display setText:text];
}
- (void)allClean {
    [self setText:@""];
    [self updateDisplayWithText:self.text];
}
- (IBAction)buttonClick:(id)sender {
    UIButton *button = (UIButton *) sender;
    switch (button.tag) {
        // 0~9
        case 100:
        case 101:
        case 102:
        case 103:
        case 104:
        case 105:
        case 106:
        case 107:
        case 108:
        case 109:
            if (self.text.length == 1 && [[self.text substringToIndex:1] isEqualToString:@"0"]) {
                return;
            }
            self.text = [NSString stringWithFormat:@"%@%@", self.text, button.currentTitle];
            break;
        case 110:
            if (!self.text.length || [self.text containsString:@"."]) {
                return;
            }
            self.text = [NSString stringWithFormat:@"%@%@", self.text, button.currentTitle];
            break;
        // (+, -, *, /)
        case 111:
        case 112:
        case 113:
        case 114: {
            int operateType = (int)button.tag - 110;
            [button setBackgroundColor:UIColor.whiteColor];
            [button setTitleColor:[UIColor colorWithRed:204.0/255 green:147.0/255 blue:79.0/255 alpha:1.0] forState:UIControlStateNormal];
            if (self.operateType) {
                
            } else if (self.text.length) {
                [self setOperateType:operateType];
                [self setPrevText:self.text];
                [self setText:@""];
//                [self updateDisplayWithText:self.]
            }
        }
        break;
        // AC
        case 118:
            [self allClean];
            break;
    }
    [self updateDisplayWithText:self.text];
}

@end
