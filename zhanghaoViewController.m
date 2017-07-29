//
//  zhanghaoViewController.m
//  自定义cell
//
//  Created by 申丝露 on 2017/7/19.
//  Copyright © 2017年 申丝露. All rights reserved.
//

#import "zhanghaoViewController.h"
#import "SecondViewController.h"
#import "MyTableViewCell.h"
#import "HeaderView.h"

@interface zhanghaoViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic,strong)NSArray *contentArray;
@property(nonatomic,strong)NSArray *imageArray;

@end

@implementation zhanghaoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    //并在push后设置
    self.hidesBottomBarWhenPushed=NO;
    //这样back回来的时候，tabBar会恢复正常显示。
    
    
    self.navigationItem.title=@"账号";
    //设置导航栏背景色
    //self.navigationController.navigationBar.barTintColor = [UIColor whiteColor];
    //设置导航栏字体大小和颜色
    [self.navigationController.navigationBar setTitleTextAttributes:
     @{NSFontAttributeName:[UIFont systemFontOfSize:18],
       NSForegroundColorAttributeName:[UIColor whiteColor]}];
    //self.navigationItem.titleView=
    
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
    //左右的按钮
    self.navigationItem.rightBarButtonItem=[[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"娱乐_播放中2"] style:UIBarButtonItemStylePlain target:self action:@selector(touchRight)];
    
        //=======================================================
    
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
    
    
    HeaderView  *header = [[HeaderView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 140)];
    

    _tab.tableHeaderView=header;
    
    [header.button1 addTarget:self action:@selector(youTouchMe) forControlEvents:UIControlEventTouchUpInside];
    [header.button2 addTarget:self action:@selector(youTouchMe) forControlEvents:UIControlEventTouchUpInside];
    [header.button4 addTarget:self action:@selector(youTouchMe) forControlEvents:UIControlEventTouchUpInside];
    [header.button5 addTarget:self action:@selector(youTouchMe) forControlEvents:UIControlEventTouchUpInside];
    [header.button6 addTarget:self action:@selector(youTouchMe) forControlEvents:UIControlEventTouchUpInside];
    [header.button7 addTarget:self action:@selector(youTouchMe) forControlEvents:UIControlEventTouchUpInside];
    [header.button8 addTarget:self action:@selector(youTouchMe) forControlEvents:UIControlEventTouchUpInside];
    [header.button9 addTarget:self action:@selector(youTouchMe) forControlEvents:UIControlEventTouchUpInside];
    [header.button10 addTarget:self action:@selector(youTouchMe) forControlEvents:UIControlEventTouchUpInside];
    [header.button11 addTarget:self action:@selector(youTouchMe) forControlEvents:UIControlEventTouchUpInside];

    
    
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    //    if(indexPath.section==0&&indexPath.row==0)
    //    {
    SecondViewController *second=[[SecondViewController alloc]init];
    [self .navigationController pushViewController:second animated:YES];
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    self.hidesBottomBarWhenPushed=NO;

    //   }
}
-(void)touchRight
{
    SecondViewController *second=[[SecondViewController alloc]init];
    //跳转
    [self .navigationController pushViewController:second animated:YES];
    
    self.hidesBottomBarWhenPushed=NO;

}
-(void)youTouchMe
{
    SecondViewController *second=[[SecondViewController alloc]init];
    //跳转
    [self .navigationController pushViewController:second animated:YES];
    
    
    self.hidesBottomBarWhenPushed=NO;

}

//=============================================================
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //1/创建静态标识符
    static NSString *identifier = @"cell";
    //2/根据标识符从重用池中取cell
    MyTableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:identifier];
    //3/如果没有取到就创建一个新的
    if(cell==nil)
    {
        cell=[[MyTableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:identifier];//identifier创建好的cell自动给标识符cell
    }
    
    
    
    
    
    _contentArray = [NSArray arrayWithObjects:@"我的消息",@"我的会员",@"商城",@"在线听歌免流量", @"设置",@"扫一扫",@"个性换肤",@"夜间模式",@"定时关闭",@"音乐闹钟",@"驾驶模式",@"分享网易云",@"关于",@"\t\t\t\t\t  退出登录", nil];
    _imageArray=[NSArray arrayWithObjects:@"我的消息-3",@"我的会员-2",@"商城-2",@"在线听歌1-3", @"设置-2",@"扫一扫-2",@"换肤-2",@"灯泡k-2",@"定时关闭-2",@"闹钟-2",@"车-2",@"分享-3",@"关于-2",nil];
    
    
    if (indexPath.section == 0) {
        cell.imageView.image = [UIImage imageNamed:_imageArray[indexPath.row]];
        
        
        //1、首先对image付值
        cell.imageView.image=[UIImage imageNamed:_imageArray[indexPath.row]];
        //2、调整大小
        CGSize itemSize = CGSizeMake(20, 20);
        UIGraphicsBeginImageContextWithOptions(itemSize, NO, UIScreen.mainScreen.scale);
        CGRect imageRect = CGRectMake(0.0, 0.0, itemSize.width, itemSize.height);
        [cell.imageView.image drawInRect:imageRect];
        cell.imageView.image = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
        
        
        cell.textLabel.text = _contentArray[indexPath.row];
    }else if (indexPath.section == 1){
        cell.imageView.image = [UIImage imageNamed:_imageArray[indexPath.row + 1]];
        
        //1、首先对image付值
        cell.imageView.image=[UIImage imageNamed:_imageArray[indexPath.row+1]];
        //2、调整大小
        CGSize itemSize = CGSizeMake(20, 20);
        UIGraphicsBeginImageContextWithOptions(itemSize, NO, UIScreen.mainScreen.scale);
        CGRect imageRect = CGRectMake(0.0, 0.0, itemSize.width, itemSize.height);
        [cell.imageView.image drawInRect:imageRect];
        cell.imageView.image = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
        

        
        
        cell.textLabel.text = _contentArray[indexPath.row + 1];
        
    }else if (indexPath.section == 2){
        cell.imageView.image = [UIImage imageNamed:_imageArray[indexPath.row + 4]];
        
        //1、首先对image付值
        cell.imageView.image=[UIImage imageNamed:_imageArray[indexPath.row+4]];
        //2、调整大小
        CGSize itemSize = CGSizeMake(20, 20);
        UIGraphicsBeginImageContextWithOptions(itemSize, NO, UIScreen.mainScreen.scale);
        CGRect imageRect = CGRectMake(0.0, 0.0, itemSize.width, itemSize.height);
        [cell.imageView.image drawInRect:imageRect];
        cell.imageView.image = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
        

        
        
        cell.textLabel.text = _contentArray[indexPath.row + 4];
    }else if (indexPath.section == 3){
        cell.imageView.image = [UIImage imageNamed:_imageArray[indexPath.row + 11]];
        
        //1、首先对image付值
        cell.imageView.image=[UIImage imageNamed:_imageArray[indexPath.row+11]];
        //2、调整大小
        CGSize itemSize = CGSizeMake(20, 20);
        UIGraphicsBeginImageContextWithOptions(itemSize, NO, UIScreen.mainScreen.scale);
        CGRect imageRect = CGRectMake(0.0, 0.0, itemSize.width, itemSize.height);
        [cell.imageView.image drawInRect:imageRect];
        cell.imageView.image = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
        

        
        
        
        
        cell.textLabel.text = _contentArray[indexPath.row + 11];
    }else
    {
        cell.imageView.image = nil;
        //cell.textLabel.textAlignment = UITextAlignmentCenter;
        cell.textLabel.text = _contentArray[indexPath.row + 13];
    }
    //cell.accessoryType=UITableViewCellAccessoryDisclosureIndicator;
    
    
    
    
    if(indexPath.section!=4)
    {
        cell.accessoryType=UITableViewCellAccessoryDisclosureIndicator;
    }else{
        cell.accessoryType=UITableViewCellAccessoryNone;
    }
    
    UISwitch *sw=[[UISwitch alloc]init];
    sw.onTintColor=[UIColor redColor];
    
//    if(indexPath.section==0&&indexPath.row==0)
//    {
//        cell.detailTextLabel.text=@"12";
//        cell.detailTextLabel.
//        //cell.detailTextLabel.backgroundColor=[UIColor redColor];
//    }
//
    
    
    
    if(indexPath.section==2&&indexPath.row==3)
    {
        cell.accessoryView=sw;
    }
    if(indexPath.section==2&&indexPath.row==2)
    {
        //cell.musicName.text=@"\t\t\t\t\t   官方红";
        //cell.accessoryView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"common_icon_arrow.png"]];
        cell.detailTextLabel.text = @"官方红";
        cell.detailTextLabel.textColor = [UIColor grayColor];
        cell.detailTextLabel.font = [UIFont systemFontOfSize:13];
        
        //cell.detailTextLabel.text=@"12";
        
        
                        cell.musicName.textColor=[UIColor grayColor];
    }

    
    if(indexPath.section==4&&indexPath.row==0)
    {
        cell.textLabel.textColor=[UIColor redColor];
    }else{
        cell.textLabel.textColor=[UIColor blackColor];
    }
    

    
        return cell;
}
//=============================================================

//控制分区代理方法

//告诉tableView一共有多少组


-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    
    
    return 5;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (0 == section)
    {
        // 第0组有多少行
        return 1;
    }else if (1 == section)
    {
        // 第1组有多少行
        return 3;
    }else if (2 == section)
    {
        return 7;
    }else if (3 == section)
    {
        
        return 2;
    }else
    {
        // 第1组有多少行
        return 1;
    }
}



#pragma mark 设置每行的高度
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 40;
}
//分区的高度
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 10;
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
