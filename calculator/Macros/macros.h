/*
 * Macros
 */

#pragma mark - KScreen

#define KScreenWidth ([UIScreen mainScreen].bounds.size.width)
#define KScreenHeight ([UIScreen mainScreen].bounds.size.height)

#pragma mark - K_iphoneStyle

#define K_iPhoneXStyle ((KScreenWidth == 375.f && KScreenHeight == 812.f ? YES : NO) || (KScreenWidth == 414.f && KScreenHeight == 896.f ? YES : NO))

# pragma mark - KStatusBar

#define KStatusBarAndNavigationBarHeight (K_iPhoneXStyle ? 88.f : 64.f)
#define KStatusBarHeight (K_iPhoneXStyle ? 44.f : 20.f)

#pragma mark - KTabar

#define KTabbarHeight (K_iPhoneXStyle ? 83.f : 49.f)
#define KMagrinBottom (K_iPhoneXStyle ? 34.f : 0.f)
