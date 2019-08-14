//
//  XWKWebViewProgressView.m
//  XWKWebViewProgressView
//
//  Created by leo on 2017/12/14.
//  Copyright © 2017 leo. All rights reserved.
//

#import "XWKWebViewProgressView.h"

#define K_PROGRESS_KEYPATH @"estimatedProgress"

@interface XWKWebViewProgressView()

@end

@implementation XWKWebViewProgressView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self customInitUI];
    }
    return self;
}

- (void)customInitUI
{
    self.progressViewStyle = UIProgressViewStyleDefault;
    self.trackTintColor = [UIColor lightGrayColor];
    self.progressTintColor = [UIColor colorWithRed:22.f/255.f green:126.f/255.f blue:251.f/255.f alpha:1.0];
}

- (void)setWebView:(WKWebView *)webView
{
    _webView = webView;
    
    // KVO
    [_webView addObserver:self forKeyPath:K_PROGRESS_KEYPATH options:NSKeyValueObservingOptionNew context:nil];
}

#pragma mark - WebView
- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context
{
    if ([keyPath isEqualToString:K_PROGRESS_KEYPATH] && object == self.webView) {
        [self setAlpha:1.0f];
        BOOL animated = self.webView.estimatedProgress > self.progress;
        [self setProgress:self.webView.estimatedProgress
                              animated:animated];
        
        if (self.webView.estimatedProgress >= 1.0f) {
            [UIView animateWithDuration:0.3f
                                  delay:0.3f
                                options:UIViewAnimationOptionCurveEaseOut
                             animations:^{
                                 [self setAlpha:0.0f];
                             }
                             completion:^(BOOL finished) {
                                 [self setProgress:0.0f animated:NO];
                             }];
        }
    }else {
        [super observeValueForKeyPath:keyPath ofObject:object change:change context:context];
    }
}

- (void)dealloc
{
    [_webView removeObserver:self forKeyPath:K_PROGRESS_KEYPATH];
}

@end
