
# CDDPagerController
A very useful father-son controller small frame.

## Language
[![CocoaPods](https://img.shields.io/cocoapods/v/CDDPagerController.svg)](https://cocoapods.org/pods/CDDPagerController)&nbsp;[![CocoaPods](https://img.shields.io/cocoapods/p/CDDPagerController.svg)](https://github.com/indulgeIn/CDDPagerController)&nbsp;


## Requirements

* Xcode 8+

## Usage
* You can do that.

```
#pragma mark - LazyLoad
-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
//    self.selectIndex = 3; //default option
}

#pragma mark - LifeCyle
- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    [self setUpAllChildViewController];
    
    [self setUpDisplayStyle:^(UIColor *__autoreleasing *titleScrollViewBgColor, UIColor *__autoreleasing *norColor, UIColor *__autoreleasing *selColor, UIColor *__autoreleasing *proColor, UIFont *__autoreleasing *titleFont, CGFloat *titleButtonWidth, BOOL *isShowPregressView, BOOL *isOpenStretch, BOOL *isOpenShade) {
        *titleScrollViewBgColor = [UIColor whiteColor]; //View background color
        *norColor = [UIColor darkGrayColor];            //Unselected color (the font color is black by default)
        *selColor = [UIColor orangeColor];              //Highlight the color (the font color is red by default)
        *proColor = [UIColor purpleColor];              //Scrollbar color (by default the color of the title is selected)
        *titleFont = [UIFont systemFontOfSize:16];      //FontSize (default fontSize is 15)
        
        *titleButtonWidth = 100;                        //Width of the title button (with default)
        
        /*
         The following BOOL values are NO.
         */
        *isShowPregressView = YES;                      //Whether to open the lower Pregress indicator under the heading.器
        *isOpenStretch = YES;                           //Whether to open indicator stretch effect.
        *isOpenShade = YES;                             //whether to open the font gradient.
    }];
    
    
    
//    [self setUpTitleScale:^(CGFloat *titleScale) { //The titleScale range is between 0 and 1 <0 or > 1, and the default is not resized by default. TitleScale opens the zoom, and the default is closed.
//        *titleScale = 0.1;
//    }];
//
//    [self setUpProgressAttribute:^(CGFloat *progressLength, CGFloat *progressHeight, CGFloat *bottomDistance) {//ProgressLength sets the length of the bottom progress indicator, with the default value of 56 progressHeight default height of the button's width (and no greater than 10)
//        *progressLength = 40;
//        *progressHeight = 5;
//    }];
    
//    [self setUpTopTitleViewAttribute:^(CGFloat *topDistance, CGFloat *titleViewHeight) {
//        *topDistance = 200;
//    }];
}

#pragma mark - Add all childControllers.
- (void)setUpAllChildViewController
{
    NSArray *titles = @[@"text01",@"text02",@"text03",@"text04",@"text05"];
    for (NSInteger i = 0; i < titles.count; i++) {
        UIViewController *vc = [UIViewController new];
        vc.title = titles[i];
        vc.view.backgroundColor = RandColor; //Random color
        [self addChildViewController:vc];
    }
}


#pragma mark - Child pages change individually
- (void)setUpAllChildViewController
{
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1.5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{ //模拟网络延迟
        UIViewController *vc = self.childViewControllers.firstObject;
        vc.title = @"我要变了";
        [self setUpRefreshDisplay]; //刷新
    });
}
```
* 中文：
 * [父子控制器](https://www.jianshu.com/p/9d80edfaf751)
 * [更新-1.1.1](https://www.jianshu.com/p/7f753a2daae3)
 * [更新-1.1.6](https://www.jianshu.com/p/929e0d54bfad)


## 版本更新
| version | note |
| ------ | ------ | 
| 1.1.0 | Start ~ 🤔| 
| 1.1.1 | Add： Life cycle renewal。| 
| 1.1.6 | Add：Child pages change individually。|

##Installation 
#### Manually:
* Drag all source files(`CDDPagerController`) under folder Extension to your project.
* Import the header(`DCPageKit.h`) file in the AppDelegate.
* A method is called

#### CocoaPods:
* Installation with CocoaPods：pod ` CDDPagerController`


#### Swift version:
* Waiting for development


## Agreement

* ` CDDPagerController` licensed under the MIT license is used. Refer to [LICENSE](https://opensource.org/licenses/MIT) for more information.

