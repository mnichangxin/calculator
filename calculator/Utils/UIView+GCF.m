#import "UIView+GCF.h"

@implementation UIView (GCF)

- (UIViewController *)getControllerFromView:(UIView *) view {
    UIResponder *responder = view;
    while ((responder = [responder nextResponder])){
        if ([responder isKindOfClass: [UIViewController class]]){
            return (UIViewController *)responder;
        }
    }
    return nil;
}

@end
