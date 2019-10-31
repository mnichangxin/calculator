#import "AppDelegate.h"
#import "MainViewController"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    MainViewController *mainViewController = [[MainViewController alloc] init];
    [self setWindow:[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]]];
    [self.window setRootViewController:mainViewController];
    [self.window makeKeyAndVisible];
    return YES;
}

@end
