#import "AppDelegate.h"
#import "ViewController.h"
//#import "HypnosisView.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    ViewController *viewController = [[ViewController alloc] init];
    [self setWindow:[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]]];
    [self.window setRootViewController:viewController];
    [self.window makeKeyAndVisible];
    return YES;
}

@end
