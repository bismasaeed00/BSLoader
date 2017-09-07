# BSLoader
To show loading animation

![alt tag](https://user-images.githubusercontent.com/16186934/29066190-e8461b4a-7c47-11e7-85d8-ab329ac53599.png)

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

