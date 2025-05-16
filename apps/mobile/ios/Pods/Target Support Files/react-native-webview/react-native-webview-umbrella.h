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

#import "RCTConvert+WKDataDetectorTypes.h"
#import "RNCWebView.h"
#import "RNCWebViewDecisionManager.h"
#import "RNCWebViewImpl.h"
#import "RNCWebViewManager.h"
#import "RNCWebViewModule.h"
#import "RNCWKProcessPoolManager.h"

FOUNDATION_EXPORT double react_native_webviewVersionNumber;
FOUNDATION_EXPORT const unsigned char react_native_webviewVersionString[];

