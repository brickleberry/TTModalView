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

@interface ViewController ()

@property(nonatomic,strong)TTModalView * modalView;
@property(nonatomic,strong)UIImageView * targetView1;
@property(nonatomic,strong)UIView * targetView2;
@property(nonatomic,strong)TTDatepickerView * targetView3;
@property(nonatomic,strong)UIView * targetView4;
@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView.tableFooterView = [[UIView alloc] init];
    NSArray *views = [[NSBundle mainBundle] loadNibNamed:@"ViewController" owner:nil options:nil];

    //init targetview
    _targetView1 = [[UIImageView alloc] init];
    [_targetView1 setImage:[UIImage imageNamed:@"demo1"]];
    
    _targetView2 = views[0];
    
    _targetView3 = [[TTDatepickerView alloc] initWithFrame:CGRectZero];
    [_targetView3 setDelegate:self];
    
    _targetView4 = views[1];
    _targetView4.layer.borderColor = [UIColor grayColor].CGColor;
    _targetView4.layer.borderWidth = 1.0f;
    _targetView4.layer.cornerRadius = 10.0f;
    
    _modalView = [[TTModalView alloc] initWithContentView:nil delegate:nil];
    
    _modalView.modalWindowFrame = CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height);
    _modalView.modalWindowLevel = UIWindowLevelNormal;



}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark TTDatepickerDelegate
-(void)didSelectTime:(NSDate *)date
          formatDate:(NSString *)dateStr
{
    [_modalView dismiss];
    
}

-(void)didCancel
{
    
    [_modalView dismiss];


}




#pragma mark tableviewdelegate
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    switch (indexPath.row) {
        case 0:
            _modalView.presentAnimationStyle = SlideInUp;
            _modalView.dismissAnimationStyle = SlideOutDown;
            _modalView.contentView =_targetView1;
            _modalView.isCancelAble = YES;
            [_modalView showWithDidAddContentBlock:^(UIView *contentView) {
                
                    [contentView mas_makeConstraints:^(MASConstraintMaker *make) {
                            make.left.trailing.equalTo(contentView.superview);
                            make.bottom.equalTo(contentView.superview);
                            make.height.equalTo(@220);
                    }];
            }];
            break;
        case 1:
            _modalView.presentAnimationStyle = SlideInDown;
            _modalView.dismissAnimationStyle = SlideOutUp;
            _modalView.contentView =_targetView2;
            _modalView.isCancelAble = YES;
            [_modalView showWithDidAddContentBlock:^(UIView *contentView) {
                
                [contentView mas_makeConstraints:^(MASConstraintMaker *make) {
                    make.left.trailing.equalTo(contentView.superview);
                    make.top.equalTo(contentView.superview);
                    make.height.equalTo(@58);
                }];
            }];
            break;

            break;
            
        case 2:
            _modalView.presentAnimationStyle = bounceIn;
            _modalView.dismissAnimationStyle = bounceOut;
            _modalView.contentView =_targetView3;
            _modalView.isCancelAble = NO;
            [_modalView showWithDidAddContentBlock:^(UIView *contentView) {
                
                [contentView mas_makeConstraints:^(MASConstraintMaker *make) {
                    make.left.trailing.equalTo(contentView.superview);
                    make.centerY.equalTo(contentView.superview);
                    make.height.equalTo(@220);
                }];
            }];
            
            break;
        case 3:
            /**
             *  support many in  out animation style
             */
            _modalView.presentAnimationStyle = flipInx;
            _modalView.dismissAnimationStyle = flipOutX;
            _modalView.contentView =_targetView4;
            _modalView.isCancelAble = YES;
            [_modalView showWithDidAddContentBlock:^(UIView *contentView) {
                
                [contentView mas_makeConstraints:^(MASConstraintMaker *make) {
                    make.centerY.centerX.equalTo(contentView.superview);
                    make.height.equalTo(@140);
                    make.width.equalTo(@300);
                }];
            }];
            
            break;
        case 4:
            _modalView.presentAnimationStyle = lightSpeedIn;
            _modalView.dismissAnimationStyle = lightSpeedOut;
            _modalView.contentView =_targetView4;
            _modalView.isCancelAble = YES;
            [_modalView showWithDidAddContentBlock:^(UIView *contentView) {
                
                [contentView mas_makeConstraints:^(MASConstraintMaker *make) {
                    make.centerY.centerX.equalTo(contentView.superview);
                    make.height.equalTo(@140);
                    make.width.equalTo(@300);
                }];
            }];
            break;
        default:
            break;
    }
    
    
}



@end
