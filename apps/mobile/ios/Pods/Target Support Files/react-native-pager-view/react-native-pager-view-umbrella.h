#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "RNCPagerViewComponentView.h"
#import "RCTConvert+UIPageViewControllerNavigationOrientation.h"
#import "RCTOnPageScrollEvent.h"
#import "RCTOnPageScrollStateChanged.h"
#import "RCTOnPageSelected.h"
#import "RNCPagerView.h"
#import "RNCPagerViewManager.h"
#import "UIView+isHorizontalRtlLayout.h"
#import "UIViewController+CreateExtension.h"

FOUNDATION_EXPORT double react_native_pager_viewVersionNumber;
FOUNDATION_EXPORT const unsigned char react_native_pager_viewVersionString[];

