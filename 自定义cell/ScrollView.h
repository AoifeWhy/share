//
//  ScrollView.h
//  自定义cell
//
//  Created by 申丝露 on 2017/7/21.
//  Copyright © 2017年 申丝露. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ScrollView : UIView<UIScrollViewDelegate>



@property(strong,nonatomic)UIButton *button1;
@property(strong,nonatomic)UIButton *button2;
@property(nonatomic,strong) UIScrollView *sv;

@property(strong,nonatomic)UIButton *button3;
@property(strong,nonatomic)UIButton *button4;
@property(strong,nonatomic)UIButton *button5;
@property(strong,nonatomic)UIButton *button6;
@property(strong,nonatomic)UIButton *button7;

@property (nonatomic, strong) NSTimer *timer; 
@end
