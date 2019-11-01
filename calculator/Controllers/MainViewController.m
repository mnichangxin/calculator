#import "MainViewController.h"
#import "ScreenViewController.h"
#import "ButtonCollection.h"

@interface MainViewController() <UICollectionViewDelegate, UICollectionViewDataSource>

//@property(nonatomic,weak) UICollectionView *collectionView;
//@property(nonatomic,weak) NSArray *dataSource;

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
    [layout setScrollDirection:UICollectionViewScrollDirectionHorizontal];
    [layout setItemSize:CGSizeMake(100, 100)];
    [layout setMinimumInteritemSpacing:10.0];
    
    UICollectionView *collectionView = [[UICollectionView alloc] initWithFrame:[[self view] frame] collectionViewLayout:layout];
    [collectionView setDelegate:self];
    [collectionView setDataSource:self];
    [collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:@"cellid"];
    
    [[self view] addSubview:collectionView];
    [[self view] addSubview:[[ScreenViewController alloc] init]];
}
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
//    return [[self dataSource] count];
    return 1;
}
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
//    return [[self dataSource] count] / 4;
    return 10;
}
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    UICollectionViewCell *collectionViewCell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cellid" forIndexPath:indexPath];
    [collectionViewCell setBackgroundColor:UIColor.cyanColor];
    return collectionViewCell;
}
- (void) setScreenAndButtonCollection {
    CGFloat screenX = 0;
    CGFloat screenY = 0;
}
//- (void)viewDidLoad {
//    [super viewDidLoad];
//    [self setText:@""];
//    [self setPrevText:@""];
//    [self setDisplayText:@""];
//    [self setIsEqual:NO];
//    [self setOperateType:OperateTypeNone];
//    [self setUIButtonCornerRaduis:[self buttons]];
//}
//- (void)setUIButtonCornerRaduis:(NSArray *) buttons {
//    for (UIButton *button in buttons) {
//        [button.layer setCornerRadius:48.f];
//    }
//}
//- (NSString *)getCommaTextWithString:(NSString *)string {
//    if ([string containsString:@"e"]) {
//        return string;
//    }
//    BOOL sign = [string hasPrefix:@"-"];
//    NSString *str = sign ? [string substringFromIndex:1] : string;
//    BOOL FLOAT = [string containsString:@"."];
//    NSString *str1 = FLOAT ? [str componentsSeparatedByString:@"."][0] : str;
//    NSString *str2 = FLOAT ? [NSString stringWithFormat:@".%@", [str componentsSeparatedByString:@"."][1]] : @"";
//    NSMutableString *mutableStr = [NSMutableString stringWithString:str1];
//    for (int i = 3; i < 300; i += 3) {
//        if (str1.length > i) {
//            [mutableStr insertString:@"," atIndex:str1.length - i];
//        } else {
//            break;
//        }
//    }
//    if (sign) {
//        [mutableStr insertString:@"-" atIndex:0];
//    }
//    [mutableStr appendString:str2];
//    return [NSString stringWithString:mutableStr];
//}
//// Calculate with "=" operate
//- (NSString *)calculateWithPrevText:(NSString *)prevText andText:(NSString *)text {
//    double preValue = prevText.doubleValue;
//    double sufValue = text.doubleValue;
//    double result = 0;
//    if (self.operateType == OperateTypeAddition) {
//        result = preValue + sufValue;
//    } else if (self.operateType == OperateTypeSubtraction) {
//        result = preValue - sufValue;
//    } else if (self.operateType == OperateTypeMultiplication) {
//        result = preValue * sufValue;
//    } else if (self.operateType == OperateTypeDivision) {
//        result = preValue / sufValue;
//    }
//    NSString *resultStr = [NSString stringWithFormat:@"%.8g", result];
//    if ([resultStr containsString:@"e"]) {
//        NSArray *arr = [resultStr componentsSeparatedByString:@"e"];
//        if ([arr[1] intValue] < 10 && [arr[1] intValue] > 0) {
//            resultStr = [NSString stringWithFormat:@"%@", @(result)];
//        }
//    } else if ([resultStr isEqualToString:@"inf"]) {
//        resultStr = @"";
//    }
//    return resultStr;
//}
//// Caculate with "%" operate
//- (NSString *)percentWithText:(NSString *)text {
//    NSNumberFormatter *numberFormatter = [[NSNumberFormatter alloc] init];
//    [numberFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
//    float resultNum = [[numberFormatter numberFromString:text] floatValue];
//    if (resultNum) {
//        resultNum = resultNum / 100;
//    }
//    NSString *resultStr = [numberFormatter stringFromNumber:[NSNumber numberWithFloat:resultNum]];
//    return resultStr;
//}
//// Caculate with "+/-" operate
//- (NSString *)negateWithText:(NSString *)text {
//    NSNumberFormatter *numberFormatter = [[NSNumberFormatter alloc] init];
//    [numberFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
//    float resultNum = [[numberFormatter numberFromString:text] floatValue];
//    if (resultNum) {
//        resultNum = -resultNum;
//    }
//    NSString *resultStr = [numberFormatter stringFromNumber:[NSNumber numberWithFloat:resultNum]];
//    return resultStr;
//}
//- (void)updateDisplayWithText:(NSString *)text {
//    [self.display setText:[self getCommaTextWithString:text]];
//}
//- (void)updateDisplayWithDisplayText:(NSString *)displayText {
//    [self.display setText:[self getCommaTextWithString:displayText]];
//}
//- (void)updateOperateWithButtonTag:(int)buttonTag {
//    NSArray *buttons = self.buttons;
//    UIColor *whiteColor = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];
//    UIColor *mixColor = [UIColor colorWithRed:214.0/255 green:145.0/255 blue:63.0/255 alpha:1.0];
//    for (UIButton *button in buttons) {
//        int curButtonTag = (int)button.tag;
//        if (curButtonTag >= 111 && curButtonTag <= 114) {
//            if (curButtonTag == buttonTag) {
//                [button setTitleColor:mixColor forState:UIControlStateNormal];
//                [button setBackgroundColor:whiteColor];
//            } else {
//                [button setTitleColor:whiteColor forState:UIControlStateNormal];
//                [button setBackgroundColor:mixColor];
//            }
//        }
//    }
//}
//- (void)allClean {
//    [self setPrevText:@""];
//    [self setText:@""];
//    [self setDisplayText:@""];
//    [self setOperateType:OperateTypeNone];
//    [self updateDisplayWithText:self.text];
//}
//- (IBAction)buttonClick:(id)sender {
//    UIButton *button = (UIButton *) sender;
//    switch (button.tag) {
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
//}

@end
