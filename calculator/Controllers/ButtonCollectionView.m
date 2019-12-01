#import "ButtonCollectionView.h"
#import "ButtonView.h"

@implementation ButtonCollectionView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        UIColor *spOperatorColor = UIColor.grayColor;
        UIColor *operatorColor = UIColor.orangeColor;
        UIColor *numColor = UIColor.darkGrayColor;
        NSArray *buttons = @[
            @{@"tag": @118, @"title": @"AC", @"backgroundColor": spOperatorColor},
            @{@"tag": @117, @"title": @"+/-", @"backgroundColor": spOperatorColor},
            @{@"tag": @116, @"title": @"%", @"backgroundColor": spOperatorColor},
            @{@"tag": @114, @"title": @"/", @"backgroundColor": operatorColor},
            @{@"tag": @107, @"title": @"7", @"backgroundColor": numColor},
            @{@"tag": @108, @"title": @"8", @"backgroundColor": numColor},
            @{@"tag": @109, @"title": @"9", @"backgroundColor": numColor},
            @{@"tag": @113, @"title": @"*", @"backgroundColor": operatorColor},
            @{@"tag": @104, @"title": @"4", @"backgroundColor": numColor},
            @{@"tag": @105, @"title": @"5", @"backgroundColor": numColor},
            @{@"tag": @106, @"title": @"6", @"backgroundColor": numColor},
            @{@"tag": @112, @"title": @"-", @"backgroundColor": operatorColor},
            @{@"tag": @101, @"title": @"1", @"backgroundColor": numColor},
            @{@"tag": @102, @"title": @"2", @"backgroundColor": numColor},
            @{@"tag": @103, @"title": @"3", @"backgroundColor": numColor},
            @{@"tag": @111, @"title": @"+", @"backgroundColor": operatorColor},
            @{@"tag": @100, @"title": @"0", @"backgroundColor": numColor},
            @{@"tag": @110, @"title": @".", @"backgroundColor": numColor},
            @{@"tag": @115, @"title": @"=", @"backgroundColor": operatorColor}
        ];
        
        self.buttonViews = [[NSMutableArray alloc] init];
        
        for (int i = 0; i < buttons.count; i++) {
            NSDictionary *button = [buttons objectAtIndex:i];
            ButtonView *buttonView = [[ButtonView alloc] initWithTag:[[button valueForKey:@"tag"] intValue]
                                                 andTitle:[button valueForKey:@"title"]
                                                 andBackgroundColor:[button valueForKey:@"backgroundColor"]];
            [[self buttonViews] addObject:buttonView];
        }
        
        [self setFrame:CGRectMake(0, SCREEM_VIEW_HEIGHT, frame.size.width, frame.size.height - SCREEM_VIEW_HEIGHT)];
        
        self.buttonGroupCollectionView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height - KMagrinBottom)];
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
        
        ButtonView *buttonView = [buttonViews objectAtIndex:i];
        
        [buttonView setFrame:CGRectMake(bX, bY, bWidth, bHeight)];
        [buttonView.layer setCornerRadius:width / 2];
        [self addSubview:buttonView];
    }
}

@end
