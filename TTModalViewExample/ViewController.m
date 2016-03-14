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
@property(nonatomic,strong)TTDatepickerView * targetView3;
@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    
//    NSArray *views = [[NSBundle mainBundle] loadNibNamed:@"ViewController" owner:nil options:nil];
//    _test1 = views[0];
    //init targetview
    _targetView1 = [[UIImageView alloc] init];
    [_targetView1 setImage:[UIImage imageNamed:@"demo1"]];
    
    _targetView3 = [[TTDatepickerView alloc] initWithFrame:CGRectZero];
    [_targetView3 setDelegate:self];
    
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
        default:
            break;
    }
    
    
}



@end
