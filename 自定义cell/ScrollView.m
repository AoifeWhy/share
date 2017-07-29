//
//  ScrollView.m
//  自定义cell
//
//  Created by 申丝露 on 2017/7/21.
//  Copyright © 2017年 申丝露. All rights reserved.
//

#import "ScrollView.h"

@implementation ScrollView   

{
    UIPageControl *PControl;
    //UIScrollView *sv;
}


- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        [self addUI];
    }
    return self;
}

- (void)addUI{


    
    _sv=[[UIScrollView alloc]initWithFrame:CGRectMake(0, 40, 375, 150)];
    _sv.backgroundColor=[UIColor yellowColor];
    [self addSubview:_sv];
    //设置大小（多大才能装下图片）
//    sv.contentSize=CGSizeMake(375*8, 150);
//    
//    //把图片装上去
//    for (int i=1; i<9; i++) {
//        
//        NSString *name=[NSString stringWithFormat:@"%d.jpg",i];
//        UIImage *image=[UIImage imageNamed:name];
//        UIImageView *imageV=[[UIImageView alloc]initWithFrame:CGRectMake(375*(i-1), 0, 375, 150)];
//        imageV.image=image;
//        [sv addSubview:imageV];
//        
//        
//        
//    }
//    
//    //分页显示
//    sv.pagingEnabled=YES;
//    
//    //是否允许反弹
//    sv.bounces=NO;//左右反弹
//    //sv.automaticallyAdjustsScrollViewInsets=NO;//上下反弹
//    //修改滚动条样式
//    //白色长条
//    //sv.indicatorStyle=UIScrollViewIndicatorStyleWhite;
//    
//    //隐藏水平滚动条
//    sv.showsHorizontalScrollIndicator=NO;
//    //        sv.showsVerticalScrollIndicator=NO;
//    //滑动到指定位置（偏移量）（就是一划直接停到那个位置）
//    //        sv.contentOffset=CGPointMake(375*2, 0);\
//    
//    //指定代理人
//    sv.delegate=self;
//    //创建四个小点(页面控制)
//    UIPageControl *PControl=[[UIPageControl alloc]initWithFrame:CGRectMake(0, 140, 375, 10)];
//    
//    //几个点？
//    PControl.numberOfPages=5;
//    
//    //选中点的颜色
//    PControl.currentPageIndicatorTintColor=[UIColor redColor];
//    //未选中点的颜色
//    PControl.pageIndicatorTintColor=[UIColor clearColor];
//    //添加事件
//    [PControl addTarget:self action:@selector(pageOn:) forControlEvents:UIControlEventValueChanged];
//    
    
    // 广告图片总数
    int count = 8;
    _sv.contentSize = CGSizeMake(count * 375, 0);
    CGSize size = _sv.frame.size;
    for (int i = 0; i < count; i++) {
        NSString *imageName = [NSString stringWithFormat:@"%d.jpg", i+1];
        UIImage *image = [UIImage imageNamed:imageName];
        UIImageView *iconView = [[UIImageView alloc] initWithImage:image];
        iconView.frame = CGRectMake(i*size.width, 0, size.width, size.height);
        [_sv addSubview:iconView];
//        // 设置frame
//        CGFloat x = i * size.width;
//        iconView.frame = CGRectMake(x, 0, size.width, size.height);
    }
    
    // 设置滚动范围
    
    // 滚动条不显示
    _sv.showsHorizontalScrollIndicator = NO;
    _sv.showsVerticalScrollIndicator = NO;
    // 设置分页
    _sv.pagingEnabled = YES;
    // 设置pagecontrol
    PControl = [[UIPageControl alloc] initWithFrame:CGRectMake(100, 75, 130, 10)];
    PControl.numberOfPages = count;
    [self addSubview:PControl];
    // 设置代理
    _sv.delegate = self;
    
    
    
    
    
    _button1=[UIButton buttonWithType:UIButtonTypeCustom];
    _button1.backgroundColor=[UIColor yellowColor];
    [self addSubview:_button1];
    
    //按钮指定位置和大小
    _button1.frame=CGRectMake(40 , 210, 80, 80);
    
    //设置按钮上的文字
    //[button1 setTitle:@"1" forState:UIControlStateNormal];
    
    //设置字体的颜色
    //[button1 setTitleColor:[UIColor redColor]forState:UIControlStateNormal];
    //背景图片
    
    //创建一张图片
    UIImage *image=[UIImage imageNamed:@"sr.jpg"];
    [_button1 setBackgroundImage:image forState:UIControlStateNormal];
    //前景图片
    //[button1 setImage:[UIImage imageNamed:@"2.jpg"] forState:UIControlStateNormal];
    
    
//    [button1.layer setMasksToBounds:YES];
//    [button1.layer setCornerRadius:35.0]; //设置矩形四个圆角半径
    
    //添加点击事件
//    [button1 addTarget:self action:@selector(youTouchMe) forControlEvents:UIControlEventTouchUpInside];
    //--------------------------------------------------------------------------
    
    
    _button2=[UIButton buttonWithType:UIButtonTypeCustom];
    _button2.backgroundColor=[UIColor yellowColor];
    [self addSubview:_button2];
    
    //按钮指定位置和大小
    _button2.frame=CGRectMake(150 , 210, 80, 80);
    
    //设置按钮上的文字
    //[button2 setTitle:@"1" forState:UIControlStateNormal];
    
    //设置字体的颜色
    //[button2 setTitleColor:[UIColor redColor]forState:UIControlStateNormal];
    //背景图片
    
    //创建一张图片
        UIImage *image2=[UIImage imageNamed:@"tj.jpg"];
        [_button2 setBackgroundImage:image2 forState:UIControlStateNormal];
    //前景图片
    //[button2 setImage:[UIImage imageNamed:@"2.jpg"] forState:UIControlStateNormal];
    
    
    //    [button2.layer setMasksToBounds:YES];
    //    [button2.layer setCornerRadius:35.0]; //设置矩形四个圆角半径
    
    //添加点击事件
    //   [button2 addTarget:self action:@selector(youTouchMe) forControlEvents:UIControlEventTouchUpInside];

//----------------------------------------------------------------------------------
    _button3=[UIButton buttonWithType:UIButtonTypeCustom];
    _button3.backgroundColor=[UIColor yellowColor];
    [self addSubview:_button3];
    
    //按钮指定位置和大小
    _button3.frame=CGRectMake(260 , 210, 80, 80);
    
    //设置按钮上的文字
    //[button3 setTitle:@"1" forState:UIControlStateNormal];
    
    //设置字体的颜色
    //[button3 setTitleColor:[UIColor redColor]forState:UIControlStateNormal];
    //背景图片
    
    //创建一张图片
        UIImage *image3=[UIImage imageNamed:@"rg.jpg"];
        [_button3 setBackgroundImage:image3 forState:UIControlStateNormal];
    //前景图片
    //[button3 setImage:[UIImage imageNamed:@"2.jpg"] forState:UIControlStateNormal];
    
    
    //    [button3.layer setMasksToBounds:YES];
    //    [button3.layer setCornerRadius:35.0]; //设置矩形四个圆角半径
    
    //添加点击事件
    //   [button3 addTarget:self action:@selector(youTouchMe) forControlEvents:UIControlEventTouchUpInside];
    
    
    
    _button4=[UIButton buttonWithType:UIButtonTypeCustom];
    _button4.backgroundColor=[UIColor clearColor];
    [self addSubview:_button4];
    
    //按钮指定位置和大小
    _button4.frame=CGRectMake(5 , 0, 90, 40);
    
    //设置按钮上的文字
    [_button4 setTitle:@"个性推荐" forState:UIControlStateNormal];
    _button4.titleLabel.font = [UIFont systemFontOfSize: 14.0];

    //设置字体的颜色
    [_button4 setTitleColor:[UIColor redColor]forState:UIControlStateNormal];
    
    
    _button5=[UIButton buttonWithType:UIButtonTypeCustom];
    _button5.backgroundColor=[UIColor clearColor];
    [self addSubview:_button5];
    
    //按钮指定位置和大小
    _button5.frame=CGRectMake(100 , 0, 90, 40);
    
    //设置按钮上的文字
    [_button5 setTitle:@"歌单" forState:UIControlStateNormal];
    _button5.titleLabel.font = [UIFont systemFontOfSize: 14.0];
    

    //设置字体的颜色
    [_button5 setTitleColor:[UIColor blackColor]forState:UIControlStateNormal];
    
    
    _button6=[UIButton buttonWithType:UIButtonTypeCustom];
    _button6.backgroundColor=[UIColor clearColor];
    [self addSubview:_button6];
    
    //按钮指定位置和大小
    _button6.frame=CGRectMake(190 , 0, 90, 40);
    
    //设置按钮上的文
    [_button6 setTitle:@"主播电台" forState:UIControlStateNormal];
    _button6.titleLabel.font = [UIFont systemFontOfSize: 14.0];
    

    //设置字体的颜色
    [_button6 setTitleColor:[UIColor blackColor]forState:UIControlStateNormal];
    
    
    _button7=[UIButton buttonWithType:UIButtonTypeCustom];
    _button7.backgroundColor=[UIColor clearColor];
    [self addSubview:_button7];
    
    //按钮指定位置和大小
    _button7.frame=CGRectMake(280 , 0, 90, 40);
    
    //设置按钮上的文字
    [_button7 setTitle:@"排行榜" forState:UIControlStateNormal];
    _button7.titleLabel.font = [UIFont systemFontOfSize: 14.0];
    

    //设置字体的颜色
    [_button7 setTitleColor:[UIColor blackColor]forState:UIControlStateNormal];
    
    
   [self addTimer];
    

    
    
}


// 正在滚动时
- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    int page = (scrollView.contentOffset.x + scrollView.frame.size.width / 2) / scrollView.frame.size.width;
    PControl.currentPage = page;
}

- (void)addTimer
{
    NSTimer *timer = [NSTimer timerWithTimeInterval:2.0 target:self selector:@selector(nextImage) userInfo:nil repeats:YES];
    self.timer = timer;
    // 消息循环
    NSRunLoop *runLoop = [NSRunLoop currentRunLoop];
    [runLoop addTimer:timer forMode:NSRunLoopCommonModes];
}


- (void)nextImage
{
    // 当前页码
 //   NSInteger page = PControl.currentPage;
    if (PControl.currentPage == PControl.numberOfPages - 1) {
        PControl.currentPage = 0;
    } else {
        PControl.currentPage++;
    }
    
    CGFloat offsetX = PControl.currentPage *375;
    [UIView animateWithDuration:1.0 animations:^{
        NSLog(@"%f--- %f",offsetX,_sv.contentSize.width);
        [_sv setContentOffset:CGPointMake(offsetX, 0) animated:YES];
//        _sv.contentOffset = CGPointMake(offsetX, 0);
//        [_sv scrollRectToVisible:CGRectMake(offsetX, 0, self.frame.size.width, _sv.frame.size.height) animated:YES];
    }];
    
}

// 开始拖拽的时候调用
- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView
{
    // 停止定时器
    [self.timer invalidate];
}
// 结束拖拽的时候调用
- (void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate
{
    [self addTimer];
}

//-(void)pageOn:(UIPageControl *)p
//{
//    NSLog(@"------>>>>>%ld",p.currentPage);
//    
//    sv.contentOffset=CGPointMake(375*p.currentPage, 0);
//}



//UIScrollView的代理方法
//下面和图片一起移动的小点在这里实现
//-(void)scrollViewDidScroll:(UIScrollView *)scrollView
//{
//    NSLog(@"动了");
//    
//    int number=(int)scrollView.contentOffset.x/375;
//    NSLog(@"%d",number+1);
//    
//    //设置小点 的位置
//    PControl.currentPage=number;
//}
//-(void)touchRight
//{
//    SecondViewController *second=[[SecondViewController alloc]init];
//    //跳转
//    [self .navigationController pushViewController:second animated:YES];
//}



/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
