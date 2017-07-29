//
//  faxianViewController.m
//  自定义cell
//
//  Created by 申丝露 on 2017/7/19.
//  Copyright © 2017年 申丝露. All rights reserved.
//

#import "faxianViewController.h"
#import "SecondViewController.h"
#import "MyTableViewCell.h"
#import "ScrollView.h"
#import "YourTableViewCell.h"
@interface faxianViewController ()<UITextFieldDelegate,UITableViewDelegate,UITableViewDataSource,UIScrollViewDelegate>
{
    UIPageControl *PControl;
    UIScrollView *sv;
}

@end

@implementation faxianViewController



-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    //取消选中被点击的这行
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    SecondViewController *second=[[SecondViewController alloc]init];
        [self .navigationController pushViewController:second animated:YES];
        self.hidesBottomBarWhenPushed=YES;
    
        self.hidesBottomBarWhenPushed=NO;
    
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    //并在push后设置
    self.hidesBottomBarWhenPushed=NO;
    //这样back回来的时候，tabBar会恢复正常显示。
    
    
    UITextField *filed=[[UITextField alloc]initWithFrame:CGRectMake(70, 70, 250, 30)];
    filed.backgroundColor=[UIColor whiteColor];
    [self.view addSubview:filed];
    
    
    //有情提示文字
    filed.placeholder=@"搜索音乐、歌词、电台";
    
    //更改输入文字的颜色
    filed.textColor=[UIColor lightGrayColor];
    filed.font=[UIFont systemFontOfSize:13];
    
    filed.textAlignment = UITextAlignmentCenter;
    
    //密文输入
    //filed.secureTextEntry=YES;
    
    //右侧清空小按钮
    filed.clearButtonMode=UITextFieldViewModeAlways;
    
    //是否允许输入
    filed.enabled=YES;//YES为允许输入，NO为不许输入
    
    //更改弹出键盘类型
    //filed.keyboardType=UIKeyboardTypeNumberPad;
    
    //给文本框添加边框
    //filed.borderStyle=UITextBorderStyleRoundedRect;//圆形边框
    //自己加边框
    filed.layer.borderColor=[UIColor redColor].CGColor;
    filed.layer.borderWidth=1;
    //自己加圆角
    filed.layer.cornerRadius=15;
    filed.layer.masksToBounds=YES;
//
    //return建的样式
    filed.returnKeyType=UIReturnKeyGo;
    
    //代理方法
    filed.delegate=self;//2.指定代理人。例：安利公司指定self（我）为代理人
    
    [self.navigationItem setTitleView:filed];
    
    
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
    //左右的按钮
    self.navigationItem.rightBarButtonItem=[[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"娱乐_播放中2"] style:UIBarButtonItemStylePlain target:self action:@selector(touchRight)];
    self.navigationItem.leftBarButtonItem=[[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"听歌识曲"] style:UIBarButtonItemStylePlain target:self action:@selector(touchRight)];
    
    
//    UIScrollView *sv=[[UIScrollView alloc]initWithFrame:CGRectMake(0, 34, 375, 180)];
//    sv.backgroundColor=[UIColor yellowColor];
//    [self.view addSubview:sv];
//    //设置大小（多大才能装下图片）
//    sv.contentSize=CGSizeMake(375*8, 150);
//    
//    //把图片装上去
//    for (int i=1; i<9; i++) {
//        
//        NSString *name=[NSString stringWithFormat:@"%d.jpg",i];
//        UIImage *image=[UIImage imageNamed:name];
//        UIImageView *imageV=[[UIImageView alloc]initWithFrame:CGRectMake(375*(i-1), 30, 375, 150)];
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
//    self.automaticallyAdjustsScrollViewInsets=NO;//上下反弹
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
    
    //UITableView
    _tab=[[UITableView alloc]initWithFrame:CGRectMake(0, 0, 375, 667) style:UITableViewStylePlain];
    //_tab=[[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    //设定代理人
    _tab.delegate=self;
    _tab.dataSource=self;
    _tab.tableFooterView = [[UIView alloc] init];
    [self.view addSubview:_tab];
    
    ScrollView  *header = [[ScrollView alloc] initWithFrame:CGRectMake(0, 40, self.view.frame.size.width, 300)];
//    UIScrollView *scr;
//    scr.delegate = self;
    
    
    
    
//    //scr=[[UIScrollView alloc]initWithFrame:CGRectMake(0, 40, 375, 150)];
//    scr.backgroundColor=[UIColor yellowColor];
//    [self addSubview:scr];
//
    
/*    int count = 8;
    CGSize size = scr.frame.size;
    for (int i = 0; i < count; i++) {
        NSString *imageName = [NSString stringWithFormat:@"%d.jpg", i+1];
        UIImage *image = [UIImage imageNamed:imageName];
        UIImageView *iconView = [[UIImageView alloc] initWithImage:image];
        [scr addSubview:iconView];
        // 设置frame
        CGFloat x = i * size.width;
        iconView.frame = CGRectMake(x, 0, size.width, size.height);
    }
    
    // 设置滚动范围
    scr.contentSize = CGSizeMake(count * size.width, 0);
    // 滚动条不显示
    scr.showsHorizontalScrollIndicator = NO;
    scr.showsVerticalScrollIndicator = NO;
    // 设置分页
    scr.pagingEnabled = YES;
    // 设置pagecontrol
    PControl.numberOfPages = count;
    // 设置代理
    scr.delegate = self;

     [self addTimer];
    */
    
    
    
       
    
    
    
    _tab.tableHeaderView=header;
    
     [header.button1 addTarget:self action:@selector(youTouchMe) forControlEvents:UIControlEventTouchUpInside];
    
    [header.button2 addTarget:self action:@selector(youTouchMe) forControlEvents:UIControlEventTouchUpInside];
    
    [header.button3 addTarget:self action:@selector(youTouchMe) forControlEvents:UIControlEventTouchUpInside];

    
    
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
    NSInteger page = PControl.currentPage;
    if (page == PControl.numberOfPages - 1) {
        page = 0;
    } else {
        page++;
    }
    
    CGFloat offsetX = page * sv.frame.size.width;
    [UIView animateWithDuration:1.0 animations:^{
        sv.contentOffset = CGPointMake(offsetX, 0);
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






-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //1/创建静态标识符
    static NSString *identifier = @"cell";
    //2/根据标识符从重用池中取cell
    YourTableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:identifier];
    //3/如果没有取到就创建一个新的
    if(cell==nil)
    {
        cell=[[YourTableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:identifier];//identifier创建好的cell自动给标识符cell
    }
    
    //调用自己写的控件
       if(indexPath.section==0&&indexPath.row==0)
    {
        [cell.button8 setTitle:@"推荐歌单 >" forState:UIControlStateNormal];
        [cell.button8 setTitleColor:[UIColor blackColor]forState:UIControlStateNormal];
        UIImage *image1=[UIImage imageNamed:@"111.jpg"];//如果图片格式是png，不用写图片格式，如果是jpg,一定要写图片格式
        [cell.button1 setImage:image1 forState:UIControlStateNormal];
        [cell.button1 addTarget:self action:@selector(youTouchMe) forControlEvents:UIControlEventTouchUpInside];
        
        UIImage *image2=[UIImage imageNamed:@"22.jpg"];//如果图片格式是png，不用写图片格式，如果是jpg,一定要写图片格式
        [cell.button2 setImage:image2 forState:UIControlStateNormal];
        [cell.button2 addTarget:self action:@selector(youTouchMe) forControlEvents:UIControlEventTouchUpInside];
        UIImage *image3=[UIImage imageNamed:@"33.jpg"];//如果图片格式是png，不用写图片格式，如果是jpg,一定要写图片格式
        [cell.button3 setImage:image3 forState:UIControlStateNormal];
        [cell.button3 addTarget:self action:@selector(youTouchMe) forControlEvents:UIControlEventTouchUpInside];
        UIImage *image4=[UIImage imageNamed:@"44.jpg"];//如果图片格式是png，不用写图片格式，如果是jpg,一定要写图片格式
        [cell.button4 setImage:image4 forState:UIControlStateNormal];
        [cell.button4 addTarget:self action:@selector(youTouchMe) forControlEvents:UIControlEventTouchUpInside];
        UIImage *image5=[UIImage imageNamed:@"55.jpg"];//如果图片格式是png，不用写图片格式，如果是jpg,一定要写图片格式
        [cell.button5 setImage:image5 forState:UIControlStateNormal];
        [cell.button5 addTarget:self action:@selector(youTouchMe) forControlEvents:UIControlEventTouchUpInside];
        UIImage *image6=[UIImage imageNamed:@"66.jpg"];//如果图片格式是png，不用写图片格式，如果是jpg,一定要写图片格式
        [cell.button6 setImage:image6 forState:UIControlStateNormal];
        [cell.button6 addTarget:self action:@selector(youTouchMe) forControlEvents:UIControlEventTouchUpInside];
    }
    
    
    
    return cell;


}



//控制分区代理方法

//告诉tableView一共有多少组


-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    
    
    return 1;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
//    if (0 == section)
//    {
//        // 第0组有多少行
//        return 1;
//    }else
//    {
//        // 第1组有多少行
        return 2;
 //   }
//    else if (2 == section)
//    {
//        return 7;
//    }else if (3 == section)
//    {
//        
//        return 2;
//    }else
//    {
//        // 第1组有多少行
//        return 1;
//    }
}



#pragma mark 设置每行的高度
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    
    return 330;
   
}
//分区的高度
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 0;
}






//-(void)pageOn:(UIPageControl *)p
//{
//    NSLog(@"------>>>>>%ld",p.currentPage);
//    
//    sv.contentOffset=CGPointMake(375*p.currentPage, 0);
//}
//
//
//
////UIScrollView的代理方法
////下面和图片一起移动的小点在这里实现
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


-(void)youTouchMe
{
    SecondViewController *second=[[SecondViewController alloc]init];
    //跳转
    [self.navigationController pushViewController:second animated:YES];
    //self.hidesBottomBarWhenPushed=YES;
    
    self.hidesBottomBarWhenPushed=NO;
}
-(void)touchRight
{
    SecondViewController *second=[[SecondViewController alloc]init];
    //跳转
    [self .navigationController pushViewController:second animated:YES];
    //self.hidesBottomBarWhenPushed=YES;
    
    self.hidesBottomBarWhenPushed=NO;

}

-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    //只要点return键就会执行这个方法，我们只需要在这里写把键盘回收掉：取消第一响应者
    [textField resignFirstResponder];
    
    //将文本框中的东西取出来，进行比较啊什么的操作
    NSString *str=textField.text;
    if([str isEqualToString:@"123456"]){
        NSLog(@"密码正确");
}
    
    //NSLog(@"你点了return键");
    return YES;//当点击键盘上的return键的时候实现这个方法
    //3.卖安利的产品，就是方法的实现
}

//其他代理方法
-(void)textFieldDidBeginEditing:(UITextField *)textField
{
    NSLog(@"开始编辑");//键盘一出现显示
}
-(void)textFieldDidEndEditing:(UITextField *)textField{
    NSLog(@"结束编辑");//键盘一消失显示
}
//使用一个类的代理方法
//1.与代理商签订一个协议。例：我要卖安利产品，我要先和安利签订一个协议
//2.指定代理人。例：安利公司指定self（我）为代理人
//3.卖安利的产品，就是方法的实现


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
