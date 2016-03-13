//
//  TTDatepickerView.m
//  ALT399
//
//  Created by titengjiang on 15/12/9.
//  Copyright © 2015年 hand. All rights reserved.
//

#import "TTDatepickerView.h"


#define RGB(r,g,b)             [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:1]
@implementation TTDatepickerView{
    
    NSDateFormatter * _dateFormatter;
   __weak id<TTDatepickerDelegate>  _delegate;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self initialization];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self initialization];

    }
    return self;
}

-(void)initialization
{
    _titleLabel = [[UILabel alloc] init];
    _titleLabel.text = @"选择时间";
    _titleLabel.textAlignment = NSTextAlignmentCenter;
    [self addSubview:_titleLabel];
    
    _datePicker = [[UIDatePicker alloc] init];
    [self addSubview:_datePicker];
    
    
    _cancelButton = [[UIButton alloc] init];
    [_cancelButton setTitle:@"取消" forState:UIControlStateNormal];
    [_cancelButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    _cancelButton.titleLabel.font = [UIFont systemFontOfSize: 18.0];

    [self addSubview:_cancelButton];
    
    _confirmButton = [[UIButton alloc] init];
    [_confirmButton setTitle:@"设置" forState:UIControlStateNormal];
    [_confirmButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [self addSubview:_confirmButton];
    
    
    [_titleLabel makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.top).offset(8);
        make.width.equalTo(94);
        make.height.equalTo(21);
        make.centerX.equalTo(self.centerX);
        
        
    }];
    
    [_confirmButton makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.leading).offset(8);
        make.bottom.equalTo(self.bottom).offset(-8);
        make.height.equalTo(44);
        make.width.equalTo(_cancelButton.width);
        
    }];
    
    [_cancelButton makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(_confirmButton.trailing).offset(10);
        make.trailing.equalTo(self.trailing).offset(-8);
        make.bottom.equalTo(self.bottom).offset(-8);
        make.height.equalTo(44);
        make.width.equalTo(_confirmButton.width);

        
    }];
    
    [_datePicker makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.leading);
        make.trailing.equalTo(self.trailing);
        make.top.equalTo(_titleLabel.bottom);
        make.bottom.equalTo(_cancelButton.top);
        
    }];
    
    _cancelButton.backgroundColor =RGB(0xaa,0xaa,0xaa);
    _confirmButton.backgroundColor = RGB(0xe8, 0x35, 0x37);
    
    self.backgroundColor = [UIColor whiteColor];
    
    
    _dateFormatter = [[NSDateFormatter alloc] init];
    [_dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm"];
    
    [_cancelButton addTarget:self action:@selector(cancelButtonPress:) forControlEvents:UIControlEventTouchUpInside];
    
    [_confirmButton addTarget:self action:@selector(confirmButtonPress:) forControlEvents:UIControlEventTouchUpInside];
    
    
    
    
}

////////////////event handler/////////////////
-(void)cancelButtonPress:(id)sender
{
    if(_delegate !=nil){
        
        [_delegate didCancel];
    }
    
}

-(void)confirmButtonPress:(id)sender
{
    if(_delegate !=nil){
        NSDate * currentDate = _datePicker.date;
        NSString * dateStr =  [_dateFormatter stringFromDate:currentDate];
        
        [_delegate didSelectTime:currentDate formatDate:dateStr];
    }
    
}


////////////////public////////////////////
-(void)setDateFormat:(NSDateFormatter *)dateFormat
{
    
    _dateFormatter = dateFormat;
    
}


-(void)setDelegate:(id<TTDatepickerDelegate>)delegate
{
    
    _delegate = delegate;
}

@end
