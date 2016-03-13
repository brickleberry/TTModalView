//
//  ViewController.m
//  TTModalViewExample
//
//  Created by titengjiang on 16/3/8.
//  Copyright © 2016年 sloop. All rights reserved.
//

#import "ViewController.h"
#import <TTModalView/TTModalView.h>
#import <Masonry/Masonry.h>
#import "TTDatepickerView.h"

@interface ViewController ()

@property(nonatomic,strong)TTModalView * modalView;
@property(nonatomic,strong)TTDatepickerView * contentView;

@property(nonatomic,strong)UIView * test1;
@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSArray *views = [[NSBundle mainBundle] loadNibNamed:@"ViewController" owner:nil options:nil];
    _test1 = views[0];
    

    _contentView = [[TTDatepickerView alloc] initWithFrame:CGRectZero];
    
    _modalView = [[TTModalView alloc] initWithContentView:_test1 delegate:nil];
    
    _modalView.modalWindowFrame = CGRectMake(0, 64, self.view.bounds.size.width, self.view.bounds.size.height-64);
    _modalView.modalWindowLevel = UIWindowLevelNormal;
    _modalView.presentAnimationStyle = bounceIn;
    _modalView.dismissAnimationStyle = bounceOut;

//      _modalView.presentAnimationStyle = SlideInDown;
//     _modalView.dismissAnimationStyle = SlideOutUp;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark
- (IBAction)showModal:(id)sender {
    
//    [_modalView showWithPresentBlock:^{
//        
//    } presentAnimationStyle:SlideInDown didAddContentBlock:^(UIView *superView) {
//        
//        [superView mas_makeConstraints:^(MASConstraintMaker *make) {
//            make.left.trailing.top.equalTo(superView.superview);
//            make.height.equalTo(@220);
//        }];
//    }];
    
    [_modalView showWithPresentBlock:^{
        
    } presentAnimationStyle:bounceIn didAddContentBlock:^(UIView *superView) {
        
        [superView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(superView.superview).offset(30);
            make.trailing.equalTo(superView.superview).offset(-30);
            make.centerY.equalTo(superView.superview);
            make.height.equalTo(@220);
        }];
    }];
    
    
//    [_modalView showWithPresentBlock:^{
//        
//    } presentAnimationStyle:SlideInUp didAddContentBlock:^(UIView *superView) {
//        
//        [superView mas_makeConstraints:^(MASConstraintMaker *make) {
//            make.left.trailing.equalTo(superView.superview);
//            make.bottom.equalTo(superView.superview);
//            make.height.equalTo(@220);
//        }];
//    }];



}

@end
