#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setText:@""];
    [self setPrevText:@""];
    [self setOperateType:OperateTypeNone];
}
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
    [self allClean];
    [self setText:resultStr];
    return resultStr;
}
- (void)updateDisplayWithText:(NSString *)text {
    [self.display setText:[self getCommaTextWithString:text]];
}
- (void)updateOperateWithButtonTag:(int)buttonTag {
    NSArray *buttons = self.buttons;
    UIColor *whiteColor = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];
    UIColor *mixColor = [UIColor colorWithRed:214.0/255 green:145.0/255 blue:63.0/255 alpha:1.0];
    for (UIButton *button in buttons) {
        int curButtonTag = (int)button.tag;
        if (curButtonTag >= 111 && curButtonTag <= 114) {
            if (curButtonTag == buttonTag) {
                [button setTitleColor:mixColor forState:UIControlStateNormal];
                [button setBackgroundColor:whiteColor];
            } else {
                [button setTitleColor:whiteColor forState:UIControlStateNormal];
                [button setBackgroundColor:mixColor];
            }
        }
    }
}
- (void)allClean {
    [self setPrevText:@""];
    [self setText:@""];
    [self setOperateType:OperateTypeNone];
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
                if (self.operateType) {
                    if (self.text.length) {
                        [self setPrevText:[self calculateWithPrevText:self.prevText andText:self.text]];
//                        [self setText:@""];
                    }
                    [self setOperateType:operateType];
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
                [self setText:[self calculateWithPrevText:self.prevText andText:self.text]];
            }
            break;
        // AC
        case 118:
            [self allClean];
            break;
    }
    [self updateOperateWithButtonTag:(int)button.tag];
    [self updateDisplayWithText:self.text];
}

@end
