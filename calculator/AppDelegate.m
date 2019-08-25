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
    
    CGRect firstFrame = self.window.bounds;
    HypnosisView *firstView = [[HypnosisView alloc] initWithFrame:firstFrame];
    
    [self.window.rootViewController.view addSubview:firstView];
    [self.window setBackgroundColor:[UIColor whiteColor]];
    [self.window makeKeyAndVisible];
    
    return YES;
}

@end
