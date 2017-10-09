# BSLoader
To show loading animation

![alt tag](https://user-images.githubusercontent.com/16186934/31326422-81b088ba-ace0-11e7-9ce6-0dde58d99b6e.png)

## How to use:
#import "BSLoader.h"

To show:
```
 BSLoadingView*loader=[[BSLoader sharedInstance] showLoader];
 ```
 To hide:
 ```
 [[BSLoader sharedInstance] hideLoader:loader];
 ```
## Customize:
To change default circle size, call this line with your value anywhere before showing loader.

```
[[BSLoader sharedInstance] setDefaultCircleSize:10];
```
By default, loader will show at the center of screen. But you can specify it's rectanlge by using this:
```
BSLoadingView*loader=[[BSLoader sharedInstance] showLoaderInframe:CGRectMake(100, 100, 200, 200)];
```
You can choose from five different color schemes, call this before displaying loader.

```
[[BSLoader sharedInstance] setColorScheme:BSColorSchemeFive];
```
