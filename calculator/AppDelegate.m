#import "AppDelegate.h"
//#import "ViewController.h"
#import "HypnosisView.h"

@implementation AppDelegate

//- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
//    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
//    ViewController *viewController = [[ViewController alloc] init];
//    self.window.rootViewController = viewController;
//    [self.window makeKeyAndVisible];
//    return YES;
//}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.rootViewController = [[UIViewController alloc] init];
    
    CGRect screenRect = self.window.bounds;
    
    CGRect bigRect = screenRect;
    bigRect.size.width *= 2.0;
    
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:screenRect];
    HypnosisView *firstView = [[HypnosisView alloc] initWithFrame:screenRect];` 
    
    screenRect.origin.x += screenRect.size.width;
    
    HypnosisView *secondView = [[HypnosisView alloc] initWithFrame:screenRect];
    
    [scrollView addSubview:firstView];
    [scrollView addSubview:secondView];
    [scrollView setContentSize:bigRect.size];
    [scrollView setPagingEnabled:YES];

    [self.window.rootViewController.view addSubview:scrollView];
    [self.window setBackgroundColor:[UIColor whiteColor]];
    [self.window makeKeyAndVisible];
    
    return YES;
}

@end
