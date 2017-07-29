//
//  pengyouViewController.m
//  自定义cell
//
//  Created by 申丝露 on 2017/7/19.
//  Copyright © 2017年 申丝露. All rights reserved.
//

#import "pengyouViewController.h"
#import "SecondViewController.h"
#import "ThierView.h"
#import "TheirTableViewCell.h"
@interface pengyouViewController ()<UITableViewDelegate,UITableViewDataSource>

@end

@implementation pengyouViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //UISegmentedControlStyleBar;
    
    
    //并在push后设置
    self.hidesBottomBarWhenPushed=NO;
    //这样back回来的时候，tabBar会恢复正常显示。
    
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];

    self.navigationItem.rightBarButtonItem=[[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"娱乐_播放中2"] style:UIBarButtonItemStylePlain target:self action:@selector(touchRight)];
    
    self.navigationItem.leftBarButtonItem=[[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"添加朋友"] style:UIBarButtonItemStylePlain target:self action:@selector(touchRight)];
    
    
    //创建一个分段控件
    NSArray *array=[NSArray arrayWithObjects:@"动态",@"附近", nil];
    UISegmentedControl *seg=[[UISegmentedControl alloc]initWithItems:array];
    seg.segmentedControlStyle = UISegmentedControlStyleBar;
    seg.frame=CGRectMake(80, 70, 200, 30);
    [self.view addSubview:seg];
    
    //修改颜色
    
    seg.backgroundColor=[UIColor whiteColor];
    
    //修改边框颜色
    seg.tintColor=[UIColor redColor];
    
    
    //默认选中某一个
    seg.selectedSegmentIndex=1;
    
    //修改标题
    //[seg setTitle:@"AAA" forSegmentAtIndex:1];
    
    //将控件里的文字改为图片
    //UIImage *image=[UIImage imageNamed:@"网易云"];
        //防止图片被控件渲染（让他保持自己的颜色）
    //[image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    
    //[seg setImage:image forSegmentAtIndex:0];
    [self.navigationItem setTitleView:seg];
    [seg addTarget:self action:@selector(change:) forControlEvents:UIControlEventValueChanged];

    
    
    //UITableView
    _tab=[[UITableView alloc]initWithFrame:CGRectMake(0, 0, 375, 667) style:UITableViewStylePlain];
    //_tab=[[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    //设定代理人
    _tab.delegate=self;
    _tab.dataSource=self;
    _tab.tableFooterView = [[UIView alloc] init];
    [self.view addSubview:_tab];
    
    
    //     self.tableView.dataSource = self;
    
    _tab.tableFooterView = [[UIView alloc] init];
    [self.view addSubview:_tab];

    
    
    
    
    
    
    
    ThierView  *header = [[ThierView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 35)];
    
    
    _tab.tableHeaderView=header;

    [header.button1 addTarget:self action:@selector(youTouchMe) forControlEvents:UIControlEventTouchUpInside];
    [header.button2 addTarget:self action:@selector(youTouchMe) forControlEvents:UIControlEventTouchUpInside];
    
    
    
 
}
//-(void)dianzan
//{
//    UIButton *buttond=[[UIButton alloc]init];
//    buttond.frame=CGRectMake(60, 270, 16, 16 );
//    UIImage *image3=[UIImage imageNamed:@"点赞-2"];//如果图片格式是png，不用写图片格式，如果是jpg,一定要写图片格式
//    [buttond setImage:image3 forState:UIControlStateNormal];
//    UIButton *buttond2=[[UIButton alloc]init];
//    buttond2.frame=CGRectMake(80, 270, 40, 20 );
//    [buttond2 setTitle:@"2876" forState:UIControlStateNormal];
//    [buttond2 setTitleColor:[UIColor grayColor]forState:UIControlStateNormal];
//    buttond2.titleLabel.font = [UIFont systemFontOfSize: 13.0];
//    
//}

-(void)touchRight
{
    SecondViewController *second=[[SecondViewController alloc]init];
    //跳转
    [self .navigationController pushViewController:second animated:YES];
   // self.hidesBottomBarWhenPushed=YES;
    
    self.hidesBottomBarWhenPushed=NO;

}
-(void)youTouchMe
{
    SecondViewController *second=[[SecondViewController alloc]init];
    //跳转
    [self .navigationController pushViewController:second animated:YES];
    //self.hidesBottomBarWhenPushed=YES;
    
    self.hidesBottomBarWhenPushed=NO;

}

//=============================================================
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //1/创建静态标识符
    static NSString *identifier = @"cell";
    //2/根据标识符从重用池中取cell
    TheirTableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:identifier];
    //3/如果没有取到就创建一个新的
    if(cell==nil)
    {
        cell=[[TheirTableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:identifier];//identifier创建好的cell自动给标识符cell
    }
    
    
    if(indexPath.section==0&&indexPath.row==0)
    {
        UIImage *image1=[UIImage imageNamed:@"头像2.jpg"];//如果图片格式是png，不用写图片格式，如果是jpg,一定要写图片格式
        [cell.button1 setImage:image1 forState:UIControlStateNormal];
        [cell.button1.layer setMasksToBounds:YES];
        [cell.button1.layer setCornerRadius:20.0]; //设置矩形四个圆角半径
        
        
        
        [cell.button2 setTitle:@"希贝儿Sibyl" forState:UIControlStateNormal];
        
        cell.button2.titleLabel.font = [UIFont systemFontOfSize: 13.0];
        //设置字体的颜色
        [cell.button2 setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
        UIImage *image3=[UIImage imageNamed:@"点赞"];//如果图片格式是png，不用写图片格式，如果是jpg,一定要写图片格式
        [cell.button3 setImage:image3 forState:UIControlStateNormal];
        UIImage *image4=[UIImage imageNamed:@"消息-2"];//如果图片格式是png，不用写图片格式，如果是jpg,一定要写图片格式
        [cell.button4 setImage:image4 forState:UIControlStateNormal];
        UIImage *image5=[UIImage imageNamed:@"分享-4"];//如果图片格式是png，不用写图片格式，如果是jpg,一定要写图片格式
        [cell.button5 setImage:image5 forState:UIControlStateNormal];
        
        [cell.button6 setTitle:@"2875" forState:UIControlStateNormal];
         [cell.button6 setTitleColor:[UIColor grayColor]forState:UIControlStateNormal];
        cell.button6.titleLabel.font = [UIFont systemFontOfSize: 13.0];
        
        
        [cell.button7 setTitle:@"290" forState:UIControlStateNormal];
        [cell.button7 setTitleColor:[UIColor grayColor]forState:UIControlStateNormal];
        cell.button7.titleLabel.font = [UIFont systemFontOfSize: 13.0];
        
        [cell.button8 setTitle:@"67" forState:UIControlStateNormal];
        [cell.button8 setTitleColor:[UIColor grayColor]forState:UIControlStateNormal];
        cell.button8.titleLabel.font = [UIFont systemFontOfSize: 13.0];
        
        UIImage *image6=[UIImage imageNamed:@"gz.jpg"];//如果图片格式是png，不用写图片格式，如果是jpg,一定要写图片格式
        [cell.button9 setImage:image6 forState:UIControlStateNormal];
        UIImage *image7=[UIImage imageNamed:@"sp.jpg"];//如果图片格式是png，不用写图片格式，如果是jpg,一定要写图片格式
//        [cell.button10 setImage:image7 forState:UIControlStateNormal];
    
         cell.lable2.text=@"美女SamanthaHarvey翻唱Ariana Grande《Side to Side》😍";
        cell.lable2.textColor=[UIColor blackColor];
        //文字大小
        cell.lable2.font=[UIFont systemFontOfSize:13];//参数为多少号字
        cell.lable2.numberOfLines=2;
        cell.lable4.text=@"——让人耳朵怀孕的翻唱速递";
        cell.lable4.textColor=[UIColor lightGrayColor];
        //文字大小
        cell.lable4.font=[UIFont systemFontOfSize:13];//参数为多少号字
        cell.lable4.numberOfLines=1;
        
        cell.lable1.text=@"最近";
        cell.lable1.textColor=[UIColor lightGrayColor];
        //文字大小
        cell.lable1.font=[UIFont systemFontOfSize:12];//参数为多少号字
        cell.lable1.numberOfLines=1;
        cell.lable3.text=@"发布短视频:";
        cell.lable3.textColor=[UIColor grayColor];
        //文字大小
        cell.lable3.font=[UIFont systemFontOfSize:13];//参数为多少号字
        cell.lable3.numberOfLines=1;
        [cell.button1 addTarget:self action:@selector(youTouchMe) forControlEvents:UIControlEventTouchUpInside];
        [cell.button2 addTarget:self action:@selector(youTouchMe) forControlEvents:UIControlEventTouchUpInside];
       // [cell.button3 addTarget:self action:@selector(dianzan) forControlEvents:UIControlEventTouchUpInside];
        //[cell.button6 addTarget:self action:@selector(dianzan) forControlEvents:UIControlEventTouchUpInside];
        [cell.button4 addTarget:self action:@selector(youTouchMe) forControlEvents:UIControlEventTouchUpInside];
        [cell.button5 addTarget:self action:@selector(youTouchMe) forControlEvents:UIControlEventTouchUpInside];
        //[cell.button7 addTarget:self action:@selector(dianzan) forControlEvents:UIControlEventTouchUpInside];
        [cell.button8 addTarget:self action:@selector(youTouchMe) forControlEvents:UIControlEventTouchUpInside];
        [cell.button9 addTarget:self action:@selector(youTouchMe) forControlEvents:UIControlEventTouchUpInside];
//        [cell.button10 addTarget:self action:@selector(dianzan) forControlEvents:UIControlEventTouchUpInside];
        
        
        cell.gifData=[NSData dataWithContentsOfFile:[[NSBundle mainBundle]pathForResource:@"000" ofType:@"gif"]];
        [cell.web loadData:cell.gifData MIMEType:@"image/gif" textEncodingName:nil baseURL:nil];

    }

    if(indexPath.section==0&&indexPath.row==1)
    {
        UIImage *image1=[UIImage imageNamed:@"头像3.jpeg"];//如果图片格式是png，不用写图片格式，如果是jpg,一定要写图片格式
        [cell.button1 setImage:image1 forState:UIControlStateNormal];
        [cell.button1.layer setMasksToBounds:YES];
        [cell.button1.layer setCornerRadius:20.0]; //设置矩形四个圆角半径
        
        
        
        [cell.button2 setTitle:@"网易云音乐" forState:UIControlStateNormal];
        
        cell.button2.titleLabel.font = [UIFont systemFontOfSize: 13.0];
        //设置字体的颜色
        [cell.button2 setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
        UIImage *image3=[UIImage imageNamed:@"点赞"];//如果图片格式是png，不用写图片格式，如果是jpg,一定要写图片格式
        [cell.button3 setImage:image3 forState:UIControlStateNormal];
        UIImage *image4=[UIImage imageNamed:@"消息-2"];//如果图片格式是png，不用写图片格式，如果是jpg,一定要写图片格式
        [cell.button4 setImage:image4 forState:UIControlStateNormal];
        UIImage *image5=[UIImage imageNamed:@"分享-4"];//如果图片格式是png，不用写图片格式，如果是jpg,一定要写图片格式
        [cell.button5 setImage:image5 forState:UIControlStateNormal];
        
        [cell.button6 setTitle:@"3068" forState:UIControlStateNormal];
        [cell.button6 setTitleColor:[UIColor grayColor]forState:UIControlStateNormal];
        cell.button6.titleLabel.font = [UIFont systemFontOfSize: 13.0];
        
        
        [cell.button7 setTitle:@"298" forState:UIControlStateNormal];
        [cell.button7 setTitleColor:[UIColor grayColor]forState:UIControlStateNormal];
        cell.button7.titleLabel.font = [UIFont systemFontOfSize: 13.0];
        
        [cell.button8 setTitle:@"138" forState:UIControlStateNormal];
        [cell.button8 setTitleColor:[UIColor grayColor]forState:UIControlStateNormal];
        cell.button8.titleLabel.font = [UIFont systemFontOfSize: 13.0];
        
        UIImage *image6=[UIImage imageNamed:@"gz.jpg"];//如果图片格式是png，不用写图片格式，如果是jpg,一定要写图片格式
        [cell.button9 setImage:image6 forState:UIControlStateNormal];
//        UIImage *image7=[UIImage imageNamed:@"100.jpg"];//如果图片格式是png，不用写图片格式，如果是jpg,一定要写图片格式
//        [cell.button10 setImage:image7 forState:UIControlStateNormal];
//
        cell.gifData=[NSData dataWithContentsOfFile:[[NSBundle mainBundle]pathForResource:@"0" ofType:@"gif"]];
        [cell.web loadData:cell.gifData MIMEType:@"image/gif" textEncodingName:nil baseURL:nil];
        
        
        
        
        cell.lable2.text=@"她的歌声陪伴了无数人的青春，今天是孙燕姿的生日🎂尚好的青春都是你❤️";
        cell.lable2.textColor=[UIColor blackColor];
        //文字大小
        cell.lable2.font=[UIFont systemFontOfSize:13];//参数为多少号字
        cell.lable2.numberOfLines=2;
        cell.lable4.text=@"—— 尚好的青春";
        cell.lable4.textColor=[UIColor lightGrayColor];
        //文字大小
        cell.lable4.font=[UIFont systemFontOfSize:13];//参数为多少号字
        cell.lable4.numberOfLines=1;
        
        cell.lable1.text=@"11:01";
        cell.lable1.textColor=[UIColor lightGrayColor];
        //文字大小
        cell.lable1.font=[UIFont systemFontOfSize:12];//参数为多少号字
        cell.lable1.numberOfLines=1;
        cell.lable3.text=@"分享单曲:";
        cell.lable3.textColor=[UIColor grayColor];
        //文字大小
        cell.lable3.font=[UIFont systemFontOfSize:13];//参数为多少号字
        cell.lable3.numberOfLines=1;
        [cell.button1 addTarget:self action:@selector(youTouchMe) forControlEvents:UIControlEventTouchUpInside];
        [cell.button2 addTarget:self action:@selector(youTouchMe) forControlEvents:UIControlEventTouchUpInside];
//        [cell.button3 addTarget:self action:@selector(dianzan2) forControlEvents:UIControlEventTouchUpInside];
//        [cell.button6 addTarget:self action:@selector(dianzan2) forControlEvents:UIControlEventTouchUpInside];
        [cell.button4 addTarget:self action:@selector(youTouchMe) forControlEvents:UIControlEventTouchUpInside];
        [cell.button5 addTarget:self action:@selector(youTouchMe) forControlEvents:UIControlEventTouchUpInside];
        [cell.button7 addTarget:self action:@selector(dianzan) forControlEvents:UIControlEventTouchUpInside];
        [cell.button8 addTarget:self action:@selector(youTouchMe) forControlEvents:UIControlEventTouchUpInside];
        [cell.button9 addTarget:self action:@selector(youTouchMe) forControlEvents:UIControlEventTouchUpInside];
       // [cell.button10 addTarget:self action:@selector(dianzan) forControlEvents:UIControlEventTouchUpInside];

    }
    
    
    
    
    
    
    
    
    
    

    return cell;
}
//=============================================================

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
//    }else if (1 == section)
//    {
//        // 第1组有多少行
//        return 3;
//    }else if (2 == section)
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
    return 2;
}



#pragma mark 设置每行的高度
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 300;
}
//分区的高度
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 10;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    //    if(indexPath.section==0&&indexPath.row==0)
    //    {
    SecondViewController *second=[[SecondViewController alloc]init];
    [self .navigationController pushViewController:second animated:YES];
    //self.hidesBottomBarWhenPushed=YES;
    
    self.hidesBottomBarWhenPushed=NO;
    [tableView deselectRowAtIndexPath:indexPath animated:YES];

    //   }
}





-(void)change:(UISegmentedControl *)sender{
    NSLog(@"测试");
    if (sender.selectedSegmentIndex == 0) {
        NSLog(@"1");
    }else if (sender.selectedSegmentIndex == 1){
        NSLog(@"2");
//    }else if (sender.selectedSegmentIndex == 2){
//        NSLog(@"3");
//    }else if (sender.selectedSegmentIndex == 3){
//        NSLog(@"4");
    }
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)dianzan
{
    UIButton *buttond=[[UIButton alloc]init];
    buttond.frame=CGRectMake(60, 379, 16, 16 );
    [self.view addSubview:buttond];
    UIImage *image3=[UIImage imageNamed:@"点赞-2"];//如果图片格式是png，不用写图片格式，如果是jpg,一定要写图片格式
    [buttond setImage:image3 forState:UIControlStateNormal];
    UIButton *buttond2=[[UIButton alloc]init];
    buttond2.frame=CGRectMake(80, 379, 40, 20 );
     [self.view addSubview:buttond2];
    [buttond2 setTitle:@"2876" forState:UIControlStateNormal];
    [buttond2 setTitleColor:[UIColor grayColor]forState:UIControlStateNormal];
    buttond2.titleLabel.font = [UIFont systemFontOfSize: 13.0];
    
}
-(void)dianzan2
{
    UIButton *buttond=[[UIButton alloc]init];
    buttond.frame=CGRectMake(60, 679, 16, 16 );
    [self.view addSubview:buttond];
    UIImage *image3=[UIImage imageNamed:@"点赞-2"];//如果图片格式是png，不用写图片格式，如果是jpg,一定要写图片格式
    [buttond setImage:image3 forState:UIControlStateNormal];
    UIButton *buttond2=[[UIButton alloc]init];
    buttond2.frame=CGRectMake(80, 679, 40, 20 );
    [self.view addSubview:buttond2];
    [buttond2 setTitle:@"3069" forState:UIControlStateNormal];
    [buttond2 setTitleColor:[UIColor grayColor]forState:UIControlStateNormal];
    buttond2.titleLabel.font = [UIFont systemFontOfSize: 13.0];
    
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
