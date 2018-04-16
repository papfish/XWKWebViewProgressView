//
//  XWKWebViewProgressView.h
//  XWKWebViewProgressView
//
//  Created by leo on 2017/12/14.
//  Copyright © 2017 leo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <WebKit/WebKit.h>

@interface XWKWebViewProgressView : UIProgressView

@property (nonatomic, strong) WKWebView *webView;

// You can set the color with setTrackTintColor & setProgressTintColor

@end
