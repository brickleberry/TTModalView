//
//  TTDatepickerView.h
//  ALT399
//
//  Created by titengjiang on 15/12/9.
//  Copyright © 2015年 hand. All rights reserved.
//
#define MAS_SHORTHAND
#define MAS_SHORTHAND_GLOBALS
#import <UIKit/UIKit.h>
#import <Masonry.h>



@protocol TTDatepickerDelegate

-(void)didSelectTime:(NSDate *)date
          formatDate:(NSString *)dateStr;

-(void)didCancel;

@end


@interface TTDatepickerView : UIView


@property(nonatomic,strong)UILabel * titleLabel;

@property(nonatomic,strong)UIDatePicker * datePicker;


@property(nonatomic,strong)UIButton * confirmButton;

@property(nonatomic,strong)UIButton * cancelButton;





-(void)setDelegate:(id<TTDatepickerDelegate>)delegate;

-(void)setDateFormat:(NSDateFormatter *)dateFormat;




@end
