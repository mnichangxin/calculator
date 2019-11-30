#import "ButtonCollectionView.h"
#import "Button.h"

@interface ButtonCollectionView ()

@property (nonatomic, strong) NSMutableArray *buttonViews;
@property(nonatomic, strong) UIView *buttonGroupCollectionView;

@end

@implementation ButtonCollectionView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        UIColor *spOperatorColor = UIColor.grayColor;
        UIColor *operatorColor = UIColor.yellowColor;
        UIColor *numColor = UIColor.darkGrayColor;
        NSArray *buttons = @[
            @{@"tag": @118, @"title": @"AC", @"color": spOperatorColor},
            @{@"tag": @117, @"title": @"+/-", @"color": spOperatorColor},
            @{@"tag": @116, @"title": @"%", @"color": spOperatorColor},
            @{@"tag": @114, @"title": @"/", @"color": operatorColor},
            @{@"tag": @107, @"title": @"7", @"color": numColor},
            @{@"tag": @108, @"title": @"8", @"color": numColor},
            @{@"tag": @109, @"title": @"9", @"color": numColor},
            @{@"tag": @113, @"title": @"*", @"color": operatorColor},
            @{@"tag": @104, @"title": @"4", @"color": numColor},
            @{@"tag": @105, @"title": @"5", @"color": numColor},
            @{@"tag": @106, @"title": @"6", @"color": numColor},
            @{@"tag": @112, @"title": @"-", @"color": operatorColor},
            @{@"tag": @101, @"title": @"1", @"color": numColor},
            @{@"tag": @102, @"title": @"2", @"color": numColor},
            @{@"tag": @103, @"title": @"3", @"color": numColor},
            @{@"tag": @111, @"title": @"+", @"color": operatorColor},
            @{@"tag": @100, @"title": @"0", @"color": numColor},
            @{@"tag": @110, @"title": @".", @"color": numColor},
            @{@"tag": @115, @"title": @"=", @"color": operatorColor}
        ];
        self.buttonViews = [[NSMutableArray alloc] init];
        for (int i = 0; i < buttons.count; i++) {
            NSDictionary *button = [buttons objectAtIndex:i];
            Button *buttonView = [[Button alloc] initWithTag:[button valueForKey:@"tag"]
                                                 andTitle:[button valueForKey:@"title"]
                                                 andColor:[button valueForKey:@"color"]];
            [[self buttonViews] addObject:buttonView];
        }
        [self setFrame:CGRectMake(0, SCREEM_VIEW_HEIGHT, frame.size.width, frame.size.height - SCREEM_VIEW_HEIGHT)];
        [self setBackgroundColor:UIColor.grayColor];
        self.buttonGroupCollectionView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height - KMagrinBottom)];
        [self.buttonGroupCollectionView setBackgroundColor:UIColor.linkColor];
        [self addSubview:self.buttonGroupCollectionView];
    }
    return self;
}

- (void)layoutSubviews {
    CGFloat margin = 10.f;
    CGFloat width = (self.frame.size.width - margin * 5) / 4;
    CGFloat height = width;

    NSArray *buttonViews = [self buttonViews];
    
    for (int i = 0; i < buttonViews.count; i++) {
        int j = i + 1;
        
        CGFloat bX = j % 4 > 0 ? width * (j % 4 - 1) + margin * (j % 4) : width * 3 + margin * 4;
        CGFloat bY = j % 4 > 0 ? width * (j / 4) + margin * (j / 4 + 1) : width * (j / 4 - 1) + margin * (j / 4);
        CGFloat bWidth = width;
        CGFloat bHeight = height;
        
        if (i == 16) {
            bWidth = width * 2 + margin;
        } else if (i == 17) {
            bX = width * 2 + margin * 3;
        } else if (i == 18) {
            bX = width * 3 + margin * 4;
        }
        
        Button *buttonView = [buttonViews objectAtIndex:i];
    
        UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(bX, bY, bWidth, bHeight)];
        
        [button setTitle:[NSString stringWithFormat:@"%@", buttonView.title] forState:UIControlStateNormal];
        [button setBackgroundColor:buttonView.color];
        [button setTag:buttonView.tag];
        [button.layer setBorderColor:UIColor.blackColor.CGColor];
        [button.layer setBorderWidth:1];
        [button.layer setCornerRadius:width / 2];
        [self addSubview:button];
    }
}

@end
