#TTModalView

TTModalView是一个自定义内容的模态窗口组件,可以任意定制窗口的内容，支持frame,autolayout等方式定位,支持定制modal层的大小以及窗口层次,支持50多种窗口弹出效果.灵活的设计能满足大部分弹出窗口的需求


# Demo

![](https://raw.githubusercontent.com/jiangtiteng/TTAnimations/master/TTAnimations.gif)


##Basic Usage
1. pod 'TTModalView'
2. #import  TTModalView/TTModalView.h 
3. api介绍   
	初始化方法
  ```objective-c
  	TTModalView *     _modalView = [[TTModalView alloc] initWithContentView:nil delegate:nil];
   	 TTModalView *  _modalView.modalWindowFrame = CGRectMake(0,0,self.view.bounds.size.width, self.view.bounds.size.height);
    _modalView.modalWindowLevel = UIWindowLevelNormal;
  ```
	设置弹入弹出的动画样式
  ```objective-c
	  _modalView.presentAnimationStyle = SlideInUp;
     _modalView.dismissAnimationStyle = SlideOutDown;

  ```
  展示,在展示方法中灵活定位content位置
  ```objective-c
	 [_modalView showWithDidAddContentBlock:^(UIView *contentView) {           
                    [contentView mas_makeConstraints:^(MASConstraintMaker *make) {
                            make.left.trailing.equalTo(contentView.superview);
                            make.bottom.equalTo(contentView.superview);
                            make.height.equalTo(@220);
                    }];
            }];


  ```
  消失
  ```objective-c
    [_modalView dismiss];
  ```
  指定消失时候的动画样式
  ```objective-c
    [_modalView dismissWithDismissBlock:^{
        
    } dismissAnimationStyle:SlideOutDown];  
  ```
  另外支持设置动画时间，完成时候移除,modal位置详见demo
## License
TTAnimation is licensed under the MIT license. (http://opensource.org/licenses/MIT)

 
