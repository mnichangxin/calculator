#import "MainViewController.h"

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setScreenView:[[ScreenView alloc] initWithFrame:self.view.frame]];
    [self setButtonCollectionView:[[ButtonCollectionView alloc] initWithFrame:self.view.frame]];
    [[self view] setBackgroundColor:UIColor.blackColor];
    [[self view] addSubview:[self screenView]];
    [[self view] addSubview:[self buttonCollectionView]];
}

- (void)onButtonViewTouch:(UIButton *)sender {
//    switch (sender.tag) {
//        // 0~9
//        case 100:
//        case 101:
//        case 102:
//        case 103:
//        case 104:
//        case 105:
//        case 106:
//        case 107:
//        case 108:
//        case 109:
//            if (self.isEqual) {
//                [self setText:@""];
//                [self setIsEqual:NO];
//            }
//            if (self.text.length == 1 && [[self.text substringToIndex:1] isEqualToString:@"0"]) {
//                return;
//            }
//            self.text = [NSString stringWithFormat:@"%@%@", self.text, button.currentTitle];
//            self.displayText = self.text;
//            break;
//        case 110:
//            if (self.isEqual) {
//                [self setText:@""];
//                [self setIsEqual:NO];
//            }
//            if (!self.text.length || [self.text containsString:@"."]) {
//                return;
//            }
//            self.text = [NSString stringWithFormat:@"%@%@", self.text, button.currentTitle];
//            self.displayText = self.text;
//            break;
//        // (+, -, *, /)
//        case 111:
//        case 112:
//        case 113:
//        case 114: {
//                int operateType = (int)button.tag - 110;
//                if (self.operateType) {
//                    if (self.text.length) {
//                        [self setOperateType:operateType];
//                        [self setPrevText:[self calculateWithPrevText:self.prevText andText:self.text]];
//                        [self setDisplayText:self.prevText];
//                        [self setText:@""];
//                    }
//                } else if (self.text.length) {
//                    [self setOperateType:operateType];
//                    [self setPrevText:self.text];
//                    [self setText:@""];
//                }
//            }
//            break;
//        // =
//        case 115:
//            if (self.operateType && self.text.length) {
//                [self setDisplayText:[self calculateWithPrevText:self.prevText andText:self.text]];
//                [self setIsEqual:YES];
//                [self setOperateType:OperateTypeNone];
//            }
//            break;
//        // %
//        case 116:
//            [self setDisplayText:[self percentWithText:self.text]];
//            [self setIsEqual:YES];
//            break;
//        // +/-
//        case 117:
//            [self setDisplayText:[self negateWithText:self.text]];
//            break;
//        // AC
//        case 118:
//            [self allClean];
//            break;
//    }
//    [self updateOperateWithButtonTag:(int)button.tag];
//    [self updateDisplayWithText:self.displayText];
}

@end
