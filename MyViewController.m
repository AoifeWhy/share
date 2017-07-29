//
//  MyViewController.m
//  自定义cell
//
//  Created by 申丝露 on 2017/7/19.
//  Copyright © 2017年 申丝露. All rights reserved.
//

#import "MyViewController.h"

@interface MyViewController ()

@end

@implementation MyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIButton *button1=[UIButton buttonWithType:UIButtonTypeCustom];
    button1.backgroundColor=[UIColor whiteColor];
    [self.view addSubview:button1];
    
    //按钮指定位置和大小
    button1.frame=CGRectMake(20 , 70, 70, 70);
    
    //设置按钮上的文字
    //[button1 setTitle:@"1" forState:UIControlStateNormal];
    
    //设置字体的颜色
    //[button1 setTitleColor:[UIColor redColor]forState:UIControlStateNormal];
    //背景图片
    
    //创建一张图片
    UIImage *image=[UIImage imageNamed:@"头像.jpg"];
    [button1 setBackgroundImage:image forState:UIControlStateNormal];
    //前景图片
    //[button1 setImage:[UIImage imageNamed:@"2.jpg"] forState:UIControlStateNormal];
    
    
    [button1.layer setMasksToBounds:YES];
    [button1.layer setCornerRadius:35.0]; //设置矩形四个圆角半径
    
    //添加点击事件
    [button1 addTarget:self action:@selector(youTouchMe) forControlEvents:UIControlEventTouchUpInside];
    
    
    
    UILabel *lable=[[UILabel alloc]initWithFrame:CGRectMake(90,75,100,30)];
    //给标签加一个背景色
    lable.backgroundColor=[UIColor whiteColor];
    //把标签加到页面上
    [self.view addSubview:lable];
    
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
    
    
    UIButton *button2=[UIButton buttonWithType:UIButtonTypeCustom];
    
    button2.frame=CGRectMake(105 , 105, 35, 15);
    //[button2 setTitle:@"Lv.4" forState:UIControlStateNormal];
    
    [button2.layer setBorderWidth:1];//设置边界的宽度
    
    //    CGColorSpaceRef colorSpaceRef = CGColorSpaceCreateDeviceRGB();
    //    CGColorRef color = CGColorCreate(colorSpaceRef, (CGFloat[]){1,0,0,1});
    //    [button2.layer setBorderColor:col
    
    
    [button2.layer setBorderColor:[UIColor lightGrayColor].CGColor];
    button2.backgroundColor=[UIColor whiteColor];
    [self.view addSubview:button2];
    
    //button2.titleLabel.font = [UIFont systemFontOfSize: 12.0];
    [button2.layer setMasksToBounds:YES];
    [button2.layer setCornerRadius:7.0]; //设置矩形四个圆角半径
    [button2 setTitleColor:[UIColor grayColor]forState:UIControlStateNormal];
    
    UIImage *image2=[UIImage imageNamed:@"4"];
    [button2 setBackgroundImage:image2 forState:UIControlStateNormal];
    
    
    UIButton *button3=[UIButton buttonWithType:UIButtonTypeCustom];
    button3.backgroundColor=[UIColor whiteColor];
    [self.view addSubview:button3];
    
    //按钮指定位置和大小
    button3.frame=CGRectMake(300 , 85, 65, 25);
    
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
    
    
    
    UIImageView *imageV=[[UIImageView alloc]initWithFrame:CGRectMake(0, 150, 375, 1)];
    imageV.backgroundColor=[UIColor yellowColor];
    [self.view addSubview:imageV];
    //创建一个图片
    UIImage *ima=[UIImage imageNamed:@"5"];
    imageV.image=ima;
    
    UIImageView *imageV2=[[UIImageView alloc]initWithFrame:CGRectMake(90, 160, 1, 30)];
    imageV2.backgroundColor=[UIColor yellowColor];
    [self.view addSubview:imageV2];
    //创建一个图片
    UIImage *ima2=[UIImage imageNamed:@"6"];
    imageV2.image=ima2;
    
    
    UIImageView *imageV3=[[UIImageView alloc]initWithFrame:CGRectMake(190, 160, 1, 30)];
    imageV3.backgroundColor=[UIColor yellowColor];
    [self.view addSubview:imageV3];
    //创建一个图片
    UIImage *ima3=[UIImage imageNamed:@"6"];
    imageV3.image=ima3;
    
    
    UIImageView *imageV4=[[UIImageView alloc]initWithFrame:CGRectMake(285, 160, 1, 30)];
    imageV4.backgroundColor=[UIColor yellowColor];
    [self.view addSubview:imageV4];
    //创建一个图片
    UIImage *ima4=[UIImage imageNamed:@"6"];
    imageV4.image=ima4;
    
    //-------------------------------------------------------
    UIButton *button4=[UIButton buttonWithType:UIButtonTypeCustom];
    button4.backgroundColor=[UIColor whiteColor];
    [self.view addSubview:button4];
    
    //按钮指定位置和大小
    button4.frame=CGRectMake(18, 160, 60, 15);
    
    //设置按钮上的文字
    [button4 setTitle:@"动态" forState:UIControlStateNormal];
    
    //设置字体的颜色
    [button4 setTitleColor:[UIColor lightGrayColor]forState:UIControlStateNormal];
    [button4.titleLabel setFont:[UIFont boldSystemFontOfSize:11]];
    
    //添加点击事件
    [button4 addTarget:self action:@selector(qianDao) forControlEvents:UIControlEventTouchUpInside];
    
    
    
    
    //、、、、、、、
    UIButton *button7=[UIButton buttonWithType:UIButtonTypeCustom];
    button7.backgroundColor=[UIColor whiteColor];
    [self.view addSubview:button7];
    
    //按钮指定位置和大小
    button7.frame=CGRectMake(18, 175, 60, 15);
    
    //设置按钮上的文字
    [button7 setTitle:@"0" forState:UIControlStateNormal];
    
    //设置字体的颜色
    [button7 setTitleColor:[UIColor blackColor]forState:UIControlStateNormal];
    [button7.titleLabel setFont:[UIFont boldSystemFontOfSize:11]];
    //添加点击事件
    [button7 addTarget:self action:@selector(qianDao) forControlEvents:UIControlEventTouchUpInside];
    //-------------------------------------------------------------
    UIButton *button5=[UIButton buttonWithType:UIButtonTypeCustom];
    button5.backgroundColor=[UIColor whiteColor];
    [self.view addSubview:button5];
    
    //按钮指定位置和大小
    button5.frame=CGRectMake(110 , 160, 60, 15);
    
    //设置按钮上的文字
    [button5 setTitle:@"关注" forState:UIControlStateNormal];
    
    //设置字体的颜色
    [button5 setTitleColor:[UIColor lightGrayColor]forState:UIControlStateNormal];
    [button5.titleLabel setFont:[UIFont boldSystemFontOfSize:11]];
    
    //添加点击事件
    [button5 addTarget:self action:@selector(qianDao) forControlEvents:UIControlEventTouchUpInside];
    
    //、、、、、、、
    UIButton *button8=[UIButton buttonWithType:UIButtonTypeCustom];
    button8.backgroundColor=[UIColor whiteColor];
    [self.view addSubview:button8];
    
    //按钮指定位置和大小
    button8.frame=CGRectMake(110 , 175, 60, 15);
    
    //设置按钮上的文字
    [button8 setTitle:@"3" forState:UIControlStateNormal];
    
    //设置字体的颜色
    [button8 setTitleColor:[UIColor blackColor]forState:UIControlStateNormal];
    [button8.titleLabel setFont:[UIFont boldSystemFontOfSize:11]];
    //添加点击事件
    [button8 addTarget:self action:@selector(qianDao) forControlEvents:UIControlEventTouchUpInside];
    //-------------------------------------------------------------
    UIButton *button6=[UIButton buttonWithType:UIButtonTypeCustom];
    button6.backgroundColor=[UIColor whiteColor];
    [self.view addSubview:button6];
    
    //按钮指定位置和大小
    button6.frame=CGRectMake(305 , 153, 60, 25);
    
    //前景图片
    [button6 setImage:[UIImage imageNamed:@"铅笔"] forState:UIControlStateNormal];
    
    [button6 setImageEdgeInsets:UIEdgeInsetsMake(1, 2, 1, 2)];//四个参数，前景图片距离button上面的距离，左边的距离，下面的距离，右边的距离
    
    //添加点击事件
    [button6 addTarget:self action:@selector(qianDao) forControlEvents:UIControlEventTouchUpInside];
    //、、、、、、
    UIButton *button9=[UIButton buttonWithType:UIButtonTypeCustom];
    button9.backgroundColor=[UIColor whiteColor];
    [self.view addSubview:button9];
    
    //按钮指定位置和大小
    button9.frame=CGRectMake(305 , 178, 60, 15);
    
    //设置按钮上的文字
    [button9 setTitle:@"我的资料" forState:UIControlStateNormal];
    
    //设置字体的颜色
    [button9 setTitleColor:[UIColor lightGrayColor]forState:UIControlStateNormal];
    [button9.titleLabel setFont:[UIFont boldSystemFontOfSize:11]];
    //添加点击事件
    [button9 addTarget:self action:@selector(qianDao) forControlEvents:UIControlEventTouchUpInside];
    //----------------------------------------------------------
    UIButton *button10=[UIButton buttonWithType:UIButtonTypeCustom];
    button10.backgroundColor=[UIColor whiteColor];
    [self.view addSubview:button10];
    
    //按钮指定位置和大小
    button10.frame=CGRectMake(210 , 160, 60, 15);
    
    //设置按钮上的文字
    [button10 setTitle:@"粉丝" forState:UIControlStateNormal];
    
    //设置字体的颜色
    [button10 setTitleColor:[UIColor lightGrayColor]forState:UIControlStateNormal];
    [button10.titleLabel setFont:[UIFont boldSystemFontOfSize:11]];
    
    //添加点击事件
    [button10 addTarget:self action:@selector(qianDao) forControlEvents:UIControlEventTouchUpInside];
    
    //、、、、、、、
    UIButton *button11=[UIButton buttonWithType:UIButtonTypeCustom];
    button11.backgroundColor=[UIColor whiteColor];
    [self.view addSubview:button11];
    
    //按钮指定位置和大小
    button11.frame=CGRectMake(210 , 175, 60, 15);
    
    //设置按钮上的文字
    [button11 setTitle:@"0" forState:UIControlStateNormal];
    
    //设置字体的颜色
    [button11 setTitleColor:[UIColor blackColor]forState:UIControlStateNormal];
    [button11.titleLabel setFont:[UIFont boldSystemFontOfSize:11]];
    //添加点击事件
    [button11 addTarget:self action:@selector(qianDao) forControlEvents:UIControlEventTouchUpInside];
}

-(void)youTouchMe
{
    NSLog(@"qqq");
}
-(void)qianDao
{
    NSLog(@"签到");
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
