//
//  wodeViewController.m
//  自定义cell
//
//  Created by 申丝露 on 2017/7/19.
//  Copyright © 2017年 申丝露. All rights reserved.
//

#import "wodeViewController.h"
#import "SecondViewController.h"
@interface wodeViewController ()<UITableViewDelegate,UITableViewDataSource>

@property(nonatomic,strong)NSArray *contentArray;
@property(nonatomic,strong)NSArray *imageArray;




@end

@implementation wodeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    //并在push后设置
    self.hidesBottomBarWhenPushed=NO;
    //这样back回来的时候，tabBar会恢复正常显示。
    self.navigationItem.title=@"我的音乐";

    [self.navigationController.navigationBar setTitleTextAttributes:
     @{NSFontAttributeName:[UIFont systemFontOfSize:18],
       NSForegroundColorAttributeName:[UIColor whiteColor]}];
    
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
    //左右的按钮
    self.navigationItem.rightBarButtonItem=[[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"娱乐_播放中2"] style:UIBarButtonItemStylePlain target:self action:@selector(touchRight)];
    
    self.navigationItem.leftBarButtonItem=[[UIBarButtonItem alloc]initWithTitle:@"更多" style:UIBarButtonItemStylePlain target:self action:@selector(touchRight)];

    
    _contentArray=[[NSArray alloc]initWithObjects:@"本地音乐",@"最近播放",@"我的电台",@"我的收藏",@"我喜欢的音乐",@"维多利亚十六年原声", nil];
    
    _imageArray=[[NSArray alloc]initWithObjects:@"音乐-5",@"播放-2",@"歌曲",@"我的收藏",@"love.jpg",@"vic.jpg", nil];
    
    
    
    
    _tab=[[UITableView alloc]initWithFrame:CGRectMake(0, 0, 375, 667) style:UITableViewStylePlain];
    //_tab=[[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    //设定代理人
    _tab.delegate=self;
    _tab.dataSource=self;
    _tab.tableFooterView = [[UIView alloc] init];
    [self.view addSubview:_tab];

}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //1/创建静态标识符
    static NSString *identifier = @"cell";
    //2/根据标识符从重用池中取cell
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:identifier];
    //3/如果没有取到就创建一个新的
    if(cell==nil  && indexPath.section == 0)
    {
        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:identifier];//identifier创建好的cell自动给标识符cell
    }else{
        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:identifier];
    }
    
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
        cell.imageView.image = [UIImage imageNamed:_imageArray[indexPath.row + 4]];
        
        //1、首先对image付值
        cell.imageView.image=[UIImage imageNamed:_imageArray[indexPath.row+4]];
        //2、调整大小
        CGSize itemSize = CGSizeMake(45, 45);
        UIGraphicsBeginImageContextWithOptions(itemSize, NO, UIScreen.mainScreen.scale);
        CGRect imageRect = CGRectMake(0.0, 0.0, itemSize.width, itemSize.height);
        [cell.imageView.image drawInRect:imageRect];
        cell.imageView.image = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
        
       cell.detailTextLabel.text = @"71首，已下载61首";
        cell.detailTextLabel.textColor=[UIColor lightGrayColor];
        cell.detailTextLabel.font = [UIFont systemFontOfSize:12];

        
        cell.textLabel.text = _contentArray[indexPath.row + 4];
        
    }else if (indexPath.section == 2){
        cell.imageView.image = [UIImage imageNamed:_imageArray[indexPath.row + 5]];
        
        //1、首先对image付值
        cell.imageView.image=[UIImage imageNamed:_imageArray[indexPath.row+5]];
        //2、调整大小
        CGSize itemSize = CGSizeMake(45, 45);
        UIGraphicsBeginImageContextWithOptions(itemSize, NO, UIScreen.mainScreen.scale);
        CGRect imageRect = CGRectMake(0.0, 0.0, itemSize.width, itemSize.height);
        [cell.imageView.image drawInRect:imageRect];
        cell.imageView.image = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
        
        cell.detailTextLabel.text=@"172首，by北漂老妖，已下载5首";
        cell.detailTextLabel.textColor=[UIColor lightGrayColor];
        cell.detailTextLabel.font = [UIFont systemFontOfSize:12];

        
        cell.textLabel.text = _contentArray[indexPath.row + 5];
    }
    
    if(indexPath.section==0)
    {
        cell.accessoryType=UITableViewCellAccessoryDisclosureIndicator;
    }else{
        cell.accessoryType=UITableViewCellAccessoryNone;
    }
    
    
    
    
    if(indexPath.section==0&&indexPath.row==0)
    {
        cell.detailTextLabel.text=@"64";
        cell.detailTextLabel.textColor=[UIColor lightGrayColor];
        cell.detailTextLabel.font = [UIFont systemFontOfSize:13];

    }
    if(indexPath.section==0&&indexPath.row==1)
    {
        cell.detailTextLabel.text=@"100";
        cell.detailTextLabel.textColor=[UIColor lightGrayColor];
        cell.detailTextLabel.font = [UIFont systemFontOfSize:13];
        
    }
    
    if(indexPath.section==0&&indexPath.row==2)
    {
        cell.detailTextLabel.text=@"0";
        cell.detailTextLabel.textColor=[UIColor lightGrayColor];
        cell.detailTextLabel.font = [UIFont systemFontOfSize:13];
        
    }
    
    if(indexPath.section==0&&indexPath.row==3)
    {
        cell.detailTextLabel.text=@"专辑/歌手/MV/专栏";
        cell.detailTextLabel.textColor=[UIColor lightGrayColor];
        cell.detailTextLabel.font = [UIFont systemFontOfSize:13];
        
    }
    
    
//    if(indexPath.section)
//    {
//        cell.detailTextLabel.text=@"注释在这里cell.detailTextLabel.text=@”字符串“";
//
//    }
    
    
//    if(indexPath.section==1&&indexPath.row==0)
//    {
//
//        //1、首先对image付值
//        cell.imageView.image=[UIImage imageNamed:@"播放"];
//        //2、调整大小
//        CGSize itemSize = CGSizeMake(45, 45);
//        UIGraphicsBeginImageContextWithOptions(itemSize, NO, UIScreen.mainScreen.scale);
//        CGRect imageRect = CGRectMake(0.0, 0.0, itemSize.width, itemSize.height);
//        [cell.imageView.image drawInRect:imageRect];
//        cell.imageView.image = UIGraphicsGetImageFromCurrentImageContext();
//        UIGraphicsEndImageContext();
//        cell.accessoryView=[UIImage imageNamed:@"播放"];;
//    }
    return cell;
    
    
}



//控制分区代理方法

//告诉tableView一共有多少组


-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    
    
    return 3;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (0 == section)
    {
        // 第0组有多少行
        return 4;
    }else if (1 == section)
    {
        // 第1组有多少行
        return 1;
    }else     {
        return 1;
    }
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
//    if(indexPath.section==0&&indexPath.row==0)
//    {
    SecondViewController *second=[[SecondViewController alloc]init];
    [self .navigationController pushViewController:second animated:YES];
    self.hidesBottomBarWhenPushed=YES;
    
    self.hidesBottomBarWhenPushed=NO;
[tableView deselectRowAtIndexPath:indexPath animated:YES];
 //   }
}

#pragma mark 设置每行的高度
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 50;
}
//分区的高度
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
       return 0;
    
    
    
    
}

-(NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section
{
    if(section==0)
    {
        return @"我创建的歌单(1)";
    }
    if(section==1)
    {
        return @"我收藏的歌单(1)";
    }
    else{
        return 0;
    }
}







-(void)touchRight
{
    SecondViewController *second=[[SecondViewController alloc]init];
    //跳转
    [self .navigationController pushViewController:second animated:YES];
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
