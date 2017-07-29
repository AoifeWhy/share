//
//  ThierView.m
//  自定义cell
//
//  Created by 申丝露 on 2017/7/22.
//  Copyright © 2017年 申丝露. All rights reserved.
//

#import "ThierView.h"

@implementation ThierView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        [self addUI];
    }
    return self;
}

- (void)addUI{
    
    _button1=[UIButton buttonWithType:UIButtonTypeCustom];
    _button1.backgroundColor=[UIColor clearColor];
    [self addSubview:_button1];
    
    //按钮指定位置和大小
    _button1.frame=CGRectMake(70 , 0, 50, 40);
    
    
    
    //创建一张图片
//    UIImage *image1=[UIImage imageNamed:@"dt.jpg"];
//    [_button1 setBackgroundImage:image1 forState:UIControlStateNormal];
    //前景图片
    //[button2 setImage:[UIImage imageNamed:@"2.jpg"] forState:UIControlStateNormal];
    [_button1 setTitle:@"发动态" forState:UIControlStateNormal];
    [_button1 setTitleColor:[UIColor darkGrayColor]forState:UIControlStateNormal];
    
    _button1.titleLabel.font = [UIFont systemFontOfSize: 13.0];
    
    
    //    [button2.layer setMasksToBounds:YES];
    //    [button2.layer setCornerRadius:35.0]; //设置矩形四个圆角半径
    
    //添加点击事件
    //   [button2 addTarget:self action:@selector(youTouchMe) forControlEvents:UIControlEventTouchUpInside];
    

    
    
    
    
    

    _button2=[UIButton buttonWithType:UIButtonTypeCustom];
    _button2.backgroundColor=[UIColor clearColor];
    [self addSubview:_button2];
    
    //按钮指定位置和大小
    _button2.frame=CGRectMake(270 , 0, 70, 40);
    
    //设置按钮上的文字
    [_button2 setTitle:@"发短视频" forState:UIControlStateNormal];
    
    //设置字体的颜色
    [_button2 setTitleColor:[UIColor darkGrayColor]forState:UIControlStateNormal];
    
    _button2.titleLabel.font = [UIFont systemFontOfSize: 13.0];
    //背景图片
    
    //创建一张图片
//    UIImage *image2=[UIImage imageNamed:@"fdsp.jpg"];
//    [_button2 setBackgroundImage:image2 forState:UIControlStateNormal];
    //前景图片
    //[button2 setImage:[UIImage imageNamed:@"2.jpg"] forState:UIControlStateNormal];
    
    
    //    [button2.layer setMasksToBounds:YES];
    //    [button2.layer setCornerRadius:35.0]; //设置矩形四个圆角半径
    
    //添加点击事件
    //   [button2 addTarget:self action:@selector(youTouchMe) forControlEvents:UIControlEventTouchUpInside];
    

    
    _button3=[UIButton buttonWithType:UIButtonTypeCustom];
    _button3.backgroundColor=[UIColor clearColor];
    [self addSubview:_button3];
    
    //按钮指定位置和大小
    _button3.frame=CGRectMake(50 , 10, 20, 20);
    
    //创建一张图片
        UIImage *image1=[UIImage imageNamed:@"发表动态-2"];
        [_button3 setBackgroundImage:image1 forState:UIControlStateNormal];
      //添加点击事件
    //   [button2 addTarget:self action:@selector(youTouchMe) forControlEvents:UIControlEventTouchUpInside];
    

    
    _button4=[UIButton buttonWithType:UIButtonTypeCustom];
    _button4.backgroundColor=[UIColor clearColor];
    [self addSubview:_button4];
    
    //按钮指定位置和大小
    _button4.frame=CGRectMake(250 , 10, 20, 20);
    
    //创建一张图片
        UIImage *image2=[UIImage imageNamed:@"视频"];
        [_button4 setBackgroundImage:image2 forState:UIControlStateNormal];
  
    //添加点击事件
    //   [button2 addTarget:self action:@selector(youTouchMe) forControlEvents:UIControlEventTouchUpInside];
    

    
    _lable1=[[UILabel alloc]initWithFrame:CGRectMake(187,8,0.5,22)];
    //给标签加一个背景色
    _lable1.backgroundColor=[UIColor lightGrayColor];
    //把标签加到页面上
    [self addSubview:_lable1];
}







@end
