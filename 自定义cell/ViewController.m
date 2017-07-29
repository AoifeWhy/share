//
//  ViewController.m
//  自定义cell
//  Copyright © 2017年 申丝露. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"
#import "MyTableViewCell.h"
@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic,strong)NSArray *contentArray;
@property(nonatomic,strong)NSArray *imageArray;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //把导航栏内容写到对应的页面中来
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
    
    _contentArray = [NSArray arrayWithObjects:@"我的消息",@"我的会员",@"商城",@"在线听歌免流量", @"设置",@"扫一扫",@"个性换肤",@"夜间模式",@"定时关闭",@"音乐闹钟",@"驾驶模式",@"分享网易云",@"关于" ,nil];
    _imageArray=[NSArray arrayWithObjects:@"我的消息",@"会员",@"商城",@"在线听歌1-2", @"设置",@"扫一扫",@"主题换肤",@"夜间模式",@"定时关闭",@"音乐闹钟",@"驾驶",@"分享",@"关于",nil];

    
    //==============================================================================================
    
    //UITableView
    _tab=[[UITableView alloc]initWithFrame:CGRectMake(0, 0, 375, 667) style:UITableViewStylePlain];
     //_tab=[[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    //设定代理人
    _tab.delegate=self;
    _tab.dataSource=self;
    _tab.tableFooterView = [[UIView alloc] init];
    [self.view addSubview:_tab];
    
    
     //self.tableView.dataSource = self;

    _tab.tableFooterView = [[UIView alloc] init];
    [self.view addSubview:_tab];
    
    //设置表头
//    UIImageView *imageV =[[UIImageView alloc]initWithFrame:CGRectMake(10, 10, 30, 30)];
//    imageV.image=[UIImage imageNamed:@"头像.jpg"];
//    _tab.tableHeaderView=imageV;
    UIView *imageV =[[UIView alloc]initWithFrame:CGRectMake(10, 10, 375, 100)];
    //imageV.image=[UIImage imageNamed:@"头像.jpg"];
    _tab.tableHeaderView=imageV;


}

-(void)touchRight
{
    SecondViewController *second=[[SecondViewController alloc]init];
    //跳转
    [self .navigationController pushViewController:second animated:YES];
}
//========================================================================================================
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //1/创建静态标识符
    static NSString *identifier = @"cell";
    //2/根据标识符从重用池中取cell
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:identifier];
    //3/如果没有取到就创建一个新的
    if(cell==nil)
    {
        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:identifier];//identifier创建好的cell自动给标识符cell
    }
    cell.focusStyle=UITableViewCellStyleDefault;
    if (indexPath.section == 0) {
        cell.imageView.image = [UIImage imageNamed:_imageArray[indexPath.row]];
        cell.textLabel.text = _contentArray[indexPath.row];
    }else if (indexPath.section == 1){
        cell.imageView.image = [UIImage imageNamed:_imageArray[indexPath.row + 1]];
        cell.textLabel.text = _contentArray[indexPath.row + 1];
        
    }else if (indexPath.section == 2){
        cell.imageView.image = [UIImage imageNamed:_imageArray[indexPath.row + 4]];
        cell.textLabel.text = _contentArray[indexPath.row + 4];
        if(indexPath.row == 7)
        {
            UISwitch *switchView = [[UISwitch alloc] init];
            [switchView setOn:NO];
            cell.accessoryView = switchView;
        }
    }else if (indexPath.section == 3){
        cell.imageView.image = [UIImage imageNamed:_imageArray[indexPath.row + 11]];
        cell.textLabel.text = _contentArray[indexPath.row + 11];
    }else if (indexPath.section == 4)
    {
        cell.imageView.image = nil;
        //cell.textLabel.textAlignment = UITextAlignmentCenter;
        //cell.selectionStyle = UITableViewCellStyleDefault;
        //cell.textLabel.textAlignment = NSTextAlignmentCenter;//文字居中
        cell.textLabel.text = _contentArray[indexPath.row + 13];
        //cell.textLabel.textAlignment = NSTextAlignmentCenter;
//        cell.musicName.text=@" \t\t\t\t\t\t\t\t 退出登录";
    }
    
    if(indexPath.section!=4)
    {
        cell.accessoryType=UITableViewCellAccessoryDisclosureIndicator;
    }else{
        cell.accessoryType=UITableViewCellAccessoryNone;
    }
    UISwitch *sw=[[UISwitch alloc]init];
    sw.onTintColor=[UIColor redColor];
    if(indexPath.section==2&&indexPath.row==3)
    {
        cell.accessoryView=sw;
    }
    
    if(indexPath.section==4&&indexPath.row==0)
    {
        cell.textLabel.textColor=[UIColor redColor];
    }else{
        cell.textLabel.textColor=[UIColor blackColor];
    }
    
    
    //调用自己写到控件
//    cell.musicIcon.image=[UIImage imageNamed:@"我的消息"];
//    cell.musicName.text=@"我的消息";
//    cell.musicImage.image=[UIImage imageNamed:@"返回-2"];
//    
  
    
    
    

//    if(0 == indexPath.section)
//    {
//        if (indexPath.row==0) {
//            cell.musicIcon.image=[UIImage imageNamed:@"1"];
//            cell.musicName.text=@"Aoifeones";
//        }
//        
//
//    }
//    if(1 == indexPath.section)
//    {
//        if (indexPath.row==0) {
//            cell.musicIcon.image=[UIImage imageNamed:@"我的消息"];
//            cell.musicName.text=@"我的消息";
//            cell.musicImage.image=[UIImage imageNamed:@"返回-3"];
//         }
//    }
//    if(2 == indexPath.section)
//    {
//        if(indexPath.row==0)
//        {
//            cell.musicIcon.image=[UIImage imageNamed:@"会员"];
//            cell.musicName.text=@"我的会员";
//            cell.musicImage.image=[UIImage imageNamed:@"返回-3"];
//        }else if(indexPath.row==1)
//        {
//            cell.musicIcon.image=[UIImage imageNamed:@"商城"];
//            cell.musicName.text=@"商城";
//            cell.musicImage.image=[UIImage imageNamed:@"返回-3"];
//        }else if(indexPath.row==2)
//        {
//            cell.musicIcon.image=[UIImage imageNamed:@"在线听歌1-2"];
//            cell.musicName.text=@"在线听歌免流量";
//            cell.musicImage.image=[UIImage imageNamed:@"返回-3"];
//        }
//    }
//    if(3 == indexPath.section)
//    {
//
//        if(indexPath.row==0)
//        {
//            cell.musicIcon.image=[UIImage imageNamed:@"设置"];
//            cell.musicName.text=@"设置";
//            cell.musicImage.image=[UIImage imageNamed:@"返回-3"];
//        }else if(indexPath.row==1)
//        {
//            cell.musicIcon.image=[UIImage imageNamed:@"扫一扫"];
//            cell.musicName.text=@"扫一扫";
//            cell.musicImage.image=[UIImage imageNamed:@"返回-3"];
//        }else if(indexPath.row==2)
//        {
//            cell.musicIcon.image=[UIImage imageNamed:@"主题换肤"];
//            cell.musicName.text=@"个性换肤";
//            cell.musicImage.image=[UIImage imageNamed:@"返回-3"];
//        }else if(indexPath.row==3)
//        {
//            cell.musicIcon.image=[UIImage imageNamed:@"夜间模式"];
//            cell.musicName.text=@"夜间模式";
//            cell.musicImage.image=[UIImage imageNamed:@"返回-3"];
//        }else if(indexPath.row==4)
//        {
//            cell.musicIcon.image=[UIImage imageNamed:@"定时关闭"];
//            cell.musicName.text=@"定时关闭";
//            cell.musicImage.image=[UIImage imageNamed:@"返回-3"];
//        }else if(indexPath.row==5)
//        {
//            cell.musicIcon.image=[UIImage imageNamed:@"音乐闹钟"];
//            cell.musicName.text=@"音乐闹钟";
//            cell.musicImage.image=[UIImage imageNamed:@"返回-3"];
//        }else if(indexPath.row==6)
//        {
//            cell.musicIcon.image=[UIImage imageNamed:@"驾驶"];
//            cell.musicName.text=@"驾驶模式";
//            cell.musicImage.image=[UIImage imageNamed:@"返回-3"];
//        }
//    }
//   if(4 == indexPath.section)
//   {
//        if(indexPath.row==0)
//        {
//            cell.musicIcon.image=[UIImage imageNamed:@"分享"];
//            cell.musicName.text=@"分享网易云";
//            cell.musicImage.image=[UIImage imageNamed:@"返回-3"];
//        }else if(indexPath.row==1)
//        {
//            cell.musicIcon.image=[UIImage imageNamed:@"关于"];
//            cell.musicName.text=@"关于";
//            cell.musicImage.image=[UIImage imageNamed:@"返回-3"];
//        }
//   }
//   else{
//       cell.musicName.text=@"          退出登录";
//   }
//        if(indexPath.row==13){
//            cell.musicIcon.image=[UIImage imageNamed:@"会员"];
//            cell.musicName.text=@"我的会员";
//            cell.musicImage.image=[UIImage imageNamed:@"返回-3"];
//        }else {
//            cell.musicIcon.image=[UIImage imageNamed:@"会员"];
//            cell.musicName.text=@"我的会员";
//            cell.musicImage.image=[UIImage imageNamed:@"返回-3"];
//        }



//  if (0 == indexPath.section)
//  { // 第0组
//    if (0 == indexPath.row) // 第0组第0行
//    {
//        cell.textLabel.text = @"奥迪";
//    }else if (1 == indexPath.row) // 第0组第1行
//        {
//            cell.textLabel.text = @"宝马";
//        }
//  }
//  if (1 == indexPath.section) // 第1组
//  {
//    if (0 == indexPath.row)
//    { // 第0组第0行
//      cell.textLabel.text = @"本田";
//    }else if (1 == indexPath.row) // 第0组第1行
//        {
//            cell.textLabel.text = @"丰田";
//        }else if (2 == indexPath.row) // 第0组第2行
//            {
//                cell.textLabel.text = @"马自达";
//            }
//   }
//

    return cell;
}
//-------------------------------------------------------------
//-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
//{
//    return 14;
//    //将cell的行数变得灵活，根据数组内的元素个数来确定
//    
//}
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
            
            return 1;
        }
}
//设置每行的高度
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


@end
