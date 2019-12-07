#import "MainViewController.h"

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setText:@""];
    [self setPrevText:@""];
    [self setDisplayText:@""];
    [self setIsEqual:NO];
    [self setOperateType:OperateTypeNone];
    [self setScreenView:[[ScreenView alloc] initWithFrame:self.view.frame]];
    [self setButtonCollectionView:[[ButtonCollectionView alloc] initWithFrame:self.view.frame]];
    [[self view] setBackgroundColor:UIColor.blackColor];
    [[self view] addSubview:[self screenView]];
    [[self view] addSubview:[self buttonCollectionView]];
}
// Format string with comma
- (NSString *)getCommaTextWithString:(NSString *)string {
    if ([string containsString:@"e"]) {
        return string;
    }
    BOOL sign = [string hasPrefix:@"-"];
    NSString *str = sign ? [string substringFromIndex:1] : string;
    BOOL FLOAT = [string containsString:@"."];
    NSString *str1 = FLOAT ? [str componentsSeparatedByString:@"."][0] : str;
    NSString *str2 = FLOAT ? [NSString stringWithFormat:@".%@", [str componentsSeparatedByString:@"."][1]] : @"";
    NSMutableString *mutableStr = [NSMutableString stringWithString:str1];
    for (int i = 3; i < 300; i += 3) {
        if (str1.length > i) {
            [mutableStr insertString:@"," atIndex:str1.length - i];
        } else {
            break;
        }
    }
    if (sign) {
        [mutableStr insertString:@"-" atIndex:0];
    }
    [mutableStr appendString:str2];
    return [NSString stringWithString:mutableStr];
}
// Calculate with "=" operate
- (NSString *)calculateWithPrevText:(NSString *)prevText andText:(NSString *)text {
    double preValue = prevText.doubleValue;
    double sufValue = text.doubleValue;
    double result = 0;
    if (self.operateType == OperateTypeAddition) {
        result = preValue + sufValue;
    } else if (self.operateType == OperateTypeSubtraction) {
        result = preValue - sufValue;
    } else if (self.operateType == OperateTypeMultiplication) {
        result = preValue * sufValue;
    } else if (self.operateType == OperateTypeDivision) {
        result = preValue / sufValue;
    }
    NSString *resultStr = [NSString stringWithFormat:@"%.8g", result];
    if ([resultStr containsString:@"e"]) {
        NSArray *arr = [resultStr componentsSeparatedByString:@"e"];
        if ([arr[1] intValue] < 10 && [arr[1] intValue] > 0) {
            resultStr = [NSString stringWithFormat:@"%@", @(result)];
        }
    } else if ([resultStr isEqualToString:@"inf"]) {
        resultStr = @"";
    }
    return resultStr;
}
// Caculate with "%" operate
- (NSString *)percentWithText:(NSString *)text {
    NSNumberFormatter *numberFormatter = [[NSNumberFormatter alloc] init];
    [numberFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
    float resultNum = [[numberFormatter numberFromString:text] floatValue];
    if (resultNum) {
        resultNum = resultNum / 100;
    }
    NSString *resultStr = [numberFormatter stringFromNumber:[NSNumber numberWithFloat:resultNum]];
    return resultStr;
}
// Caculate with "+/-" operate
- (NSString *)negateWithText:(NSString *)text {
    NSNumberFormatter *numberFormatter = [[NSNumberFormatter alloc] init];
    [numberFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
    float resultNum = [[numberFormatter numberFromString:text] floatValue];
    if (resultNum) {
        resultNum = -resultNum;
    }
    NSString *resultStr = [numberFormatter stringFromNumber:[NSNumber numberWithFloat:resultNum]];
    return resultStr;
}
- (void)allClean {
    [self setPrevText:@""];
    [self setText:@""];
    [self setDisplayText:@""];
    [self setOperateType:OperateTypeNone];
//    [self updateDisplayWithText:self.text];
}
- (void)onButtonViewTouch:(UIButton *)sender {
    NSInteger buttonTag = [sender tag];
    NSString *buttonTitle = [sender titleForState:UIControlStateNormal];
    switch (buttonTag) {
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
            if (self.isEqual) {
                [self setText:@""];
                [self setIsEqual:NO];
            }
            if (self.text.length == 1 && [[self.text substringToIndex:1] isEqualToString:@"0"]) {
                return;
            }
            self.text = [NSString stringWithFormat:@"%@%@", self.text, buttonTitle];
            self.displayText = self.text;
            break;
        case 110:
            if (self.isEqual) {
                [self setText:@""];
                [self setIsEqual:NO];
            }
            if (!self.text.length || [self.text containsString:@"."]) {
                return;
            }
            self.text = [NSString stringWithFormat:@"%@%@", self.text, buttonTitle];
            self.displayText = self.text;
            break;
        // (+, -, *, /)
        case 111:
        case 112:
        case 113:
        case 114: {
                int operateType = (int)buttonTag - 110;
                if (self.operateType) {
                    if (self.text.length) {
                        [self setOperateType:operateType];
                        [self setPrevText:[self calculateWithPrevText:self.prevText andText:self.text]];
                        [self setDisplayText:self.prevText];
                        [self setText:@""];
                    }
                } else if (self.text.length) {
                    [self setOperateType:operateType];
                    [self setPrevText:self.text];
                    [self setText:@""];
                }
            }
            break;
        // =
        case 115:
            if (self.operateType && self.text.length) {
                [self setDisplayText:[self calculateWithPrevText:self.prevText andText:self.text]];
                [self setIsEqual:YES];
                [self setOperateType:OperateTypeNone];
            }
            break;
        // %
        case 116:
            [self setDisplayText:[self percentWithText:self.text]];
            [self setIsEqual:YES];
            break;
        // +/-
        case 117:
            [self setDisplayText:[self negateWithText:self.text]];
            break;
        // AC
        case 118:
            [self allClean];
            break;
    }
    [[self screenView] updateLabelTextWithScreenLabelText:[self displayText]];
}

@end
