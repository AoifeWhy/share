//
//  HeaderView.m
//  自定义cell
//
//  Created by 申丝露 on 2017/7/20.
//  Copyright © 2017年 申丝露. All rights reserved.
//

#import "HeaderView.h"
#import "SecondViewController.h"
@implementation HeaderView

- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        [self addUI];
    }
    return self;
}

- (void)addUI{
    
    _button1=[UIButton buttonWithType:UIButtonTypeCustom];
    _button1.backgroundColor=[UIColor whiteColor];
    [self addSubview:_button1];
    
    //按钮指定位置和大小
    _button1.frame=CGRectMake(10 , 10, 70, 70);
    
    //设置按钮上的文字
    //[button1 setTitle:@"1" forState:UIControlStateNormal];
    
    //设置字体的颜色
    //[button1 setTitleColor:[UIColor redColor]forState:UIControlStateNormal];
    //背景图片
    
    //创建一张图片
    UIImage *image=[UIImage imageNamed:@"头像.jpg"];
    [_button1 setBackgroundImage:image forState:UIControlStateNormal];
    //前景图片
    //[button1 setImage:[UIImage imageNamed:@"2.jpg"] forState:UIControlStateNormal];
    
    
    [_button1.layer setMasksToBounds:YES];
    [_button1.layer setCornerRadius:35.0]; //设置矩形四个圆角半径
    
    //添加点击事件
    [_button1 addTarget:self action:@selector(youTouchMe) forControlEvents:UIControlEventTouchUpInside];
    
    
    
    UILabel *lable=[[UILabel alloc]initWithFrame:CGRectMake(80,15,100,30)];
    //给标签加一个背景色
    lable.backgroundColor=[UIColor whiteColor];
    //把标签加到页面上
    [self addSubview:lable];
    
    //lable的常用属性
    lable.text=@"Aoifeones";
    /*或是
     NSString *string = @"这是一段话";
     lable.text=string;*/
    
    //文字居中
    lable.textAlignment=NSTextAlignmentCenter;
    //    //文字左对齐
    //    lable.textAlignment=NSTextAlignmentLeft;
    //    //文字右对齐
    //    lable.textAlignment=NSTextAlignmentRight;
    
    //文字颜色
    lable.textColor=[UIColor blackColor];
    //文字大小
    lable.font=[UIFont systemFontOfSize:15];//参数为多少号字
    
    //--------------------------------------------------------------------
    _button2=[UIButton buttonWithType:UIButtonTypeCustom];
    
    _button2.frame=CGRectMake(95 , 45, 35, 15);
    //[button2 setTitle:@"Lv.4" forState:UIControlStateNormal];
    
    [_button2.layer setBorderWidth:1];//设置边界的宽度
    
    //    CGColorSpaceRef colorSpaceRef = CGColorSpaceCreateDeviceRGB();
    //    CGColorRef color = CGColorCreate(colorSpaceRef, (CGFloat[]){1,0,0,1});
    //    [button2.layer setBorderColor:col
    
    
    [_button2.layer setBorderColor:[UIColor lightGrayColor].CGColor];
    _button2.backgroundColor=[UIColor whiteColor];
    [self addSubview:_button2];
    
    //button2.titleLabel.font = [UIFont systemFontOfSize: 12.0];
    [_button2.layer setMasksToBounds:YES];
    [_button2.layer setCornerRadius:7.0]; //设置矩形四个圆角半径
    [_button2 setTitleColor:[UIColor grayColor]forState:UIControlStateNormal];
    
    UIImage *image2=[UIImage imageNamed:@"41"];
    [_button2 setBackgroundImage:image2 forState:UIControlStateNormal];
    
    //---------------------------------------------------------------------
    UIButton *button3=[UIButton buttonWithType:UIButtonTypeCustom];
    button3.backgroundColor=[UIColor whiteColor];
    [self addSubview:button3];
    
    //按钮指定位置和大小
    button3.frame=CGRectMake(300 , 25, 65, 25);
    
    //设置按钮上的文字
    [button3 setTitle:@"签到" forState:UIControlStateNormal];
    
    //设置字体的颜色
    [button3 setTitleColor:[UIColor redColor]forState:UIControlStateNormal];
    //背景图片
    
    //创建一张图片
    //UIImage *image3=[UIImage imageNamed:@"金币"];
    //[button1 setBackgroundImage:image forState:UIControlStateNormal];
    //前景图片
    [button3 setImage:[UIImage imageNamed:@"金币"] forState:UIControlStateNormal];
    
//    //1、首先对image付值
//    cell.imageView.image=[UIImage imageNamed:@"金币"];
//    //2、调整大小
//    CGSize itemSize = CGSizeMake(20, 20);
//    UIGraphicsBeginImageContextWithOptions(itemSize, NO, UIScreen.mainScreen.scale);
//    CGRect imageRect = CGRectMake(0.0, 0.0, itemSize.width, itemSize.height);
//    [cell.imageView.image drawInRect:imageRect];
//    cell.imageView.image = UIGraphicsGetImageFromCurrentImageContext();
//    UIGraphicsEndImageContext();

    
    
    
    [button3 setImageEdgeInsets:UIEdgeInsetsMake(5, 7, 5, 25)];//四个参数，前景图片距离button上面的距离，左边的距离，下面的距离，右边的距离
    [button3 setTitleEdgeInsets:UIEdgeInsetsMake(5, 5, 5, 5)];//文字距离button....
    
    [button3.layer setBorderWidth:1];//设置边界的宽度
    //    [button3.titleLabel setFont:[UIFont fontWithName:@"隶书" size:2]];
    
    [button3.titleLabel setFont:[UIFont boldSystemFontOfSize:12]];
    
    [button3.layer setBorderColor:[UIColor redColor].CGColor];
    
    [button3.layer setMasksToBounds:YES];
    [button3.layer setCornerRadius:12.0]; //设置矩形四个圆角半径
    
    //添加点击事件
    [button3 addTarget:self action:@selector(qianDao) forControlEvents:UIControlEventTouchUpInside];
    
    
    //----------------------------------------------------------------------
    UIImageView *imageV=[[UIImageView alloc]initWithFrame:CGRectMake(0, 90, 375, 1)];
    imageV.backgroundColor=[UIColor yellowColor];
    [self addSubview:imageV];
    //创建一个图片
    UIImage *ima=[UIImage imageNamed:@"51"];
    imageV.image=ima;
    
    UIImageView *imageV2=[[UIImageView alloc]initWithFrame:CGRectMake(90, 100, 1, 30)];
    imageV2.backgroundColor=[UIColor yellowColor];
    [self addSubview:imageV2];
    //创建一个图片
    UIImage *ima2=[UIImage imageNamed:@"61"];
    imageV2.image=ima2;
    
    
    UIImageView *imageV3=[[UIImageView alloc]initWithFrame:CGRectMake(190, 100, 1, 30)];
    imageV3.backgroundColor=[UIColor yellowColor];
    [self addSubview:imageV3];
    //创建一个图片
    UIImage *ima3=[UIImage imageNamed:@"61"];
    imageV3.image=ima3;
    
    
    UIImageView *imageV4=[[UIImageView alloc]initWithFrame:CGRectMake(285, 100, 1, 30)];
    imageV4.backgroundColor=[UIColor yellowColor];
    [self addSubview:imageV4];
    //创建一个图片
    UIImage *ima4=[UIImage imageNamed:@"61"];
    imageV4.image=ima4;
    
    //-------------------------------------------------------
    _button4=[UIButton buttonWithType:UIButtonTypeCustom];
    _button4.backgroundColor=[UIColor whiteColor];
    [self addSubview:_button4];
    
    //按钮指定位置和大小
    _button4.frame=CGRectMake(18, 100, 60, 15);
    
    //设置按钮上的文字
    [_button4 setTitle:@"动态" forState:UIControlStateNormal];
    
    //设置字体的颜色
    [_button4 setTitleColor:[UIColor lightGrayColor]forState:UIControlStateNormal];
    [_button4.titleLabel setFont:[UIFont boldSystemFontOfSize:11]];
    
    //添加点击事件
    [_button4 addTarget:self action:@selector(youTouchMe) forControlEvents:UIControlEventTouchUpInside];
    
    
    
    
    //、、、、、、、
    _button7=[UIButton buttonWithType:UIButtonTypeCustom];
    _button7.backgroundColor=[UIColor whiteColor];
    [self addSubview:_button7];
    
    //按钮指定位置和大小
    _button7.frame=CGRectMake(18, 115, 60, 15);
    
    //设置按钮上的文字
    [_button7 setTitle:@"0" forState:UIControlStateNormal];
    
    //设置字体的颜色
    [_button7 setTitleColor:[UIColor blackColor]forState:UIControlStateNormal];
    [_button7.titleLabel setFont:[UIFont boldSystemFontOfSize:11]];
    //添加点击事件
    [_button7 addTarget:self action:@selector(youTouchMe) forControlEvents:UIControlEventTouchUpInside];
    //-------------------------------------------------------------
    _button5=[UIButton buttonWithType:UIButtonTypeCustom];
    _button5.backgroundColor=[UIColor whiteColor];
    [self addSubview:_button5];
    
    //按钮指定位置和大小
    
    _button5.frame=CGRectMake(110 , 100, 60, 15);
    
    //设置按钮上的文字
    [_button5 setTitle:@"关注" forState:UIControlStateNormal];
    
    //设置字体的颜色
    [_button5 setTitleColor:[UIColor lightGrayColor]forState:UIControlStateNormal];
    [_button5.titleLabel setFont:[UIFont boldSystemFontOfSize:11]];
    
    //添加点击事件
    [_button5 addTarget:self action:@selector(youTouchMe) forControlEvents:UIControlEventTouchUpInside];
    
    //、、、、、、、
    _button8=[UIButton buttonWithType:UIButtonTypeCustom];
    _button8.backgroundColor=[UIColor whiteColor];
    [self addSubview:_button8];
    
    //按钮指定位置和大小
    _button8.frame=CGRectMake(110 , 115, 60, 15);
    
    //设置按钮上的文字
    [_button8 setTitle:@"3" forState:UIControlStateNormal];
    
    //设置字体的颜色
    [_button8 setTitleColor:[UIColor blackColor]forState:UIControlStateNormal];
    [_button8.titleLabel setFont:[UIFont boldSystemFontOfSize:11]];
    //添加点击事件
    [_button8 addTarget:self action:@selector(youTouchMe) forControlEvents:UIControlEventTouchUpInside];
    //-------------------------------------------------------------
    _button6=[UIButton buttonWithType:UIButtonTypeCustom];
    _button6.backgroundColor=[UIColor whiteColor];
    [self addSubview:_button6];
    
    //按钮指定位置和大小
    _button6.frame=CGRectMake(305 , 93, 60, 25);
    
    //前景图片
    [_button6 setImage:[UIImage imageNamed:@"铅笔"] forState:UIControlStateNormal];
    
    [_button6 setImageEdgeInsets:UIEdgeInsetsMake(1, 2, 1, 2)];//四个参数，前景图片距离button上面的距离，左边的距离，下面的距离，右边的距离
    
    //添加点击事件
    [_button6 addTarget:self action:@selector(youTouchMe) forControlEvents:UIControlEventTouchUpInside];
    //、、、、、、
    _button9=[UIButton buttonWithType:UIButtonTypeCustom];
    _button9.backgroundColor=[UIColor whiteColor];
    [self addSubview:_button9];
    
    //按钮指定位置和大小
    _button9.frame=CGRectMake(305 , 118, 60, 15);
    
    //设置按钮上的文字
    [_button9 setTitle:@"我的资料" forState:UIControlStateNormal];
    
    //设置字体的颜色
    [_button9 setTitleColor:[UIColor lightGrayColor]forState:UIControlStateNormal];
    [_button9.titleLabel setFont:[UIFont boldSystemFontOfSize:11]];
    //添加点击事件
    [_button9 addTarget:self action:@selector(youTouchMe) forControlEvents:UIControlEventTouchUpInside];
    //----------------------------------------------------------
    
    _button10=[UIButton buttonWithType:UIButtonTypeCustom];
    _button10.backgroundColor=[UIColor whiteColor];
    [self addSubview:_button10];
    
    //按钮指定位置和大小
    _button10.frame=CGRectMake(210 , 100, 60, 15);
    
    //设置按钮上的文字
    [_button10 setTitle:@"粉丝" forState:UIControlStateNormal];
    
    //设置字体的颜色
    [_button10 setTitleColor:[UIColor lightGrayColor]forState:UIControlStateNormal];
    [_button10.titleLabel setFont:[UIFont boldSystemFontOfSize:11]];
    
    //添加点击事件
    [_button10 addTarget:self action:@selector(youTouchMe) forControlEvents:UIControlEventTouchUpInside];
    
    //、、、、、、、
    _button11=[UIButton buttonWithType:UIButtonTypeCustom];
    _button11.backgroundColor=[UIColor whiteColor];
    [self addSubview:_button11];
    
    //按钮指定位置和大小
    _button11.frame=CGRectMake(210 , 115, 60, 15);
    
    //设置按钮上的文字
    [_button11 setTitle:@"0" forState:UIControlStateNormal];
    
    //设置字体的颜色
    [_button11 setTitleColor:[UIColor blackColor]forState:UIControlStateNormal];
    [_button11.titleLabel setFont:[UIFont boldSystemFontOfSize:11]];
    //添加点击事件
    [_button11 addTarget:self action:@selector(youTouchMe) forControlEvents:UIControlEventTouchUpInside];
}


-(void)youTouchMe
{
    NSLog(@"qqq");
}
-(void)qianDao
{
    UIButton *button12=[UIButton buttonWithType:UIButtonTypeCustom];
    button12.backgroundColor=[UIColor whiteColor];
    [self addSubview:button12];
    
    //按钮指定位置和大小
    button12.frame=CGRectMake(300 , 25, 65, 25);
    
    //设置按钮上的文字
    [button12 setTitle:@"已签到" forState:UIControlStateNormal];
    
    //设置字体的颜色
    [button12 setTitleColor:[UIColor lightGrayColor]forState:UIControlStateNormal];
    [button12.layer setBorderWidth:1];//设置边界的宽度

    [button12.titleLabel setFont:[UIFont boldSystemFontOfSize:12]];
    
    [button12.layer setBorderColor:[UIColor grayColor].CGColor];
    
    [button12.layer setMasksToBounds:YES];
    [button12.layer setCornerRadius:12.0]; //设置矩形四个圆角半径
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
