# XWKWebViewProgressView

[![CI Status](http://img.shields.io/travis/xuliang2015/XWKWebViewProgressView.svg?style=flat)](https://travis-ci.org/xuliang2015/XWKWebViewProgressView)
[![Version](https://img.shields.io/cocoapods/v/XWKWebViewProgressView.svg?style=flat)](http://cocoapods.org/pods/XWKWebViewProgressView)
[![License](https://img.shields.io/cocoapods/l/XWKWebViewProgressView.svg?style=flat)](http://cocoapods.org/pods/XWKWebViewProgressView)
[![Platform](https://img.shields.io/cocoapods/p/XWKWebViewProgressView.svg?style=flat)](http://cocoapods.org/pods/XWKWebViewProgressView)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

XWKWebViewProgressView is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'XWKWebViewProgressView'
```
### Usage

---

```
XWKWebViewProgressView *progressView = [[XWKWebViewProgressView alloc] initWithFrame:CGRectMake(0, 64, 375, 2)];
[self.view addSubview:progressView];
[progressView setTrackTintColor:[UIColor lightGrayColor]];
[progressView setProgressTintColor:[UIColor redColor]];
[progressView setWebView:self.webView];
```

## Author

xuliang2015, liang.xv@qq.com

## License

XWKWebViewProgressView is available under the MIT license. See the LICENSE file for more info.
