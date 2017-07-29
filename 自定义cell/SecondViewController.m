//
//  SecondViewController.m
//  自定义cell
//
//  Created by 申丝露 on 2017/7/18.
//  Copyright © 2017年 申丝露. All rights reserved.
//

#import "SecondViewController.h"
#import <AVFoundation/AVFoundation.h>
@interface SecondViewController ()  //<AVAudioPlayerDelegate,CAAnimationDelegate>

@end

@implementation SecondViewController
- (void)viewWillAppear:(BOOL)animated{
    
    //设置导航栏背景图片为一个空的image，这样就透明了
    [self.navigationController.navigationBar setBackgroundImage:[[UIImage alloc] init] forBarMetrics:UIBarMetricsDefault];
    
    //去掉透明后导航栏下边的黑边
    //[self.navigationController.navigationBar setShadowImage:[[UIImage alloc] init]];
}
- (void)viewWillDisappear:(BOOL)animated{
    
    //    如果不想让其他页面的导航栏变为透明 需要重置
    [self.navigationController.navigationBar setBackgroundImage:nil forBarMetrics:UIBarMetricsDefault];
    [self.navigationController.navigationBar setShadowImage:nil];
    self.tabBarController.tabBar.hidden = NO;
}


//-(void)initUserFace{
//    
//    //添加playProgress
//    
//    _playProgress= [[UIProgressView alloc] initWithProgressViewStyle: UIProgressViewStyleDefault];
//    
//    _playProgress.frame=CGRectMake(0, 100, self.view.bounds.size.width, 36);
//    
//    [self.view addSubview:_playProgress];

//    //添加播放按钮
//    _playOrPause=[[UIButton alloc]initWithFrame:CGRectMake(0, 150, 120, 36)];
//    [_playOrPause setTitle:@"播放" forState:UIControlStateNormal];
//    [_playOrPause setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
//    [_playOrPause addTarget:self action:@selector(playOrPauseAct:) forControlEvents:UIControlEventTouchUpInside];
//    [self.view addSubview:_playOrPause];
//    
//}
//-(NSTimer *)timer{
//    if (!_timer) {
//        _timer=[NSTimer scheduledTimerWithTimeInterval:0.5 target:self selector:@selector(updateProgress) userInfo:nil repeats:true];
//    }
//    return _timer;
//}
//
//-(AVAudioPlayer *)audioPlayer{
//    if (!_audioPlayer) {
//        NSString *urlStr=[[NSBundle mainBundle]pathForResource:@"Worth It.mp3" ofType:nil];
//        NSURL *url=[NSURL fileURLWithPath:urlStr];
//        NSError *error=nil;
//        //初始化播放器，注意这里的Url参数只能时文件路径，不支持HTTP Url
//        _audioPlayer=[[AVAudioPlayer alloc]initWithContentsOfURL:url error:&error];
//        //设置播放器属性
//        _audioPlayer.numberOfLoops=0;//设置为0不循环
//        _audioPlayer.delegate=self;
//        [_audioPlayer prepareToPlay];//加载音频文件到缓存
//        if(error){
//            NSLog(@"初始化播放器过程发生错误,错误信息:%@",error.localizedDescription);
//            return nil;
//        }
//    }
//    return _audioPlayer;
//}


///**
// *  播放音频
// */
//-(void)play{
//    if (![self.audioPlayer isPlaying]) {
//        [self.audioPlayer play];
//        self.timer.fireDate=[NSDate distantPast];//恢复定时器
//    }
//}
//
///**
// *  暂停播放
// */
//-(void)pause{
//    if ([self.audioPlayer isPlaying]) {
//        [self.audioPlayer pause];
//        self.timer.fireDate=[NSDate distantFuture];//暂停定时器，注意不能调用invalidate方法，此方法会取消，之后无法恢复
//        
//    }
//}
//
///**
// *  更新播放进度
// */
//-(void)updateProgress{
//    float progress= self.audioPlayer.currentTime /self.audioPlayer.duration;
//    [self.playProgress setProgress:progress animated:true];
//}
//
////#pragma mark - 播放器代理方法
//-(void)audioPlayerDidFinishPlaying:(AVAudioPlayer *)player successfully:(BOOL)flag{
//    NSLog(@"音乐播放完成...");
//    
//    [_playOrPause setTitle:@"播放" forState:UIControlStateNormal];
//    
//}
//-(void)playOrPauseAct:(UIButton *)sender{
//    NSString *strPlay=sender.titleLabel.text;
//    NSLog(@"strPlay=%@",strPlay);
//    if ([strPlay isEqualToString:@"播放"]) {
//        [sender setTitle:@"暂停" forState:UIControlStateNormal];
//        [self play];
//    }else{
//        [sender setTitle:@"播放" forState:UIControlStateNormal];
//        [self pause];
//    }
//}

- (void)viewDidLoad {
    [super viewDidLoad];
    //隐藏tabbar
  self.tabBarController.tabBar.hidden=YES;
    
    
    
   // [self initUserFace];
    
    
    
    
    
    //并在push后设置
    self.hidesBottomBarWhenPushed=NO;
    //这样back回来的时候，tabBar会恢复正常显示。
    self.view.backgroundColor=[UIColor yellowColor];
    
    self.navigationItem.title=@"Out Of The Woods";
    [self.navigationController.navigationBar setTitleTextAttributes:
     @{NSFontAttributeName:[UIFont systemFontOfSize:15],
       NSForegroundColorAttributeName:[UIColor whiteColor]}];
    
    
    //第二个页面左上角返回的按钮
    self.navigationItem.leftBarButtonItem=[[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"返回-2"] style:UIBarButtonItemStylePlain target:self action:@selector(goBack)];
    self.navigationItem.rightBarButtonItem=[[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"分享-1"] style:UIBarButtonItemStylePlain target:self action:@selector(goBack)];
//    UITableView *tab=[[UITableView alloc]initWithFrame:CGRectMake(0, 0, 335, 667) style:UITableViewStylePlain];
//    tab.tableFooterView = [[UIView alloc] init];
//    [self.view addSubview:tab];
    //self.view.alpha=0.5;
    
    
    UIImageView *bgImgView = [[UIImageView alloc] initWithFrame:self.view.bounds];
      bgImgView.image = [UIImage imageNamed:@"ts.jpg"];
       [self.view addSubview:bgImgView];
    //毛玻璃特效
    UIVisualEffectView *effectView=[[UIVisualEffectView alloc]initWithEffect:[UIBlurEffect effectWithStyle:UIBlurEffectStyleDark]];
    //设置虚化度
    effectView.alpha=1;
    
    effectView.frame=CGRectMake(0, 0, self.view.frame.size.width, 667);
    [bgImgView addSubview:effectView];
    
    
    
    
//    UIImageView *bgImgView = [[UIImageView alloc] initWithFrame:self.view.bounds];
//    //bgImgView.image = [UIImage imageNamed:@"huoying.jpg"];
//    bgImgView.contentMode = UIViewContentModeScaleAspectFill;
//    // 对背景图片进行毛玻璃效果处理 参数blurRadius默认是,可指定,最后一个参数block回调可以为nil
//    [bgImgView setImageToBlur: [UIImage imageNamed:@"ts.jpg"] blurRadius: completionBlock:nil];
//    bgImgView.userInteractionEnabled = YES;
//    [self.view addSubview:bgImgView];
    
    
//    UIBlurEffect *effect = [UIBlurEffect effectWithStyle:UIBlurEffectStyleDark];
//    UIVisualEffectView *effectView = [[UIVisualEffectView alloc] initWithEffect:effect];
//    effectView.frame = CGRectMake(0, 0, bgImgView.frame.size.width*0.5, bgImgView.frame.size.height);
//    [bgImgView addSubview:effectView];
//    
//   
  //-----------------------------------------------
    //滑动条UISlider
    UISlider *sl=[[UISlider alloc]initWithFrame:CGRectMake(30, 550, 300, 50)];
    [self.view addSubview:sl];
    //小球的颜色
    sl.thumbTintColor=[UIColor whiteColor];
    //未划过区域的颜色
    sl.maximumTrackTintColor=[UIColor lightGrayColor];
    //划过区域的颜色
    sl.minimumTrackTintColor=[UIColor redColor];
    //设置最大最小值
    sl.minimumValue=0.00;
    sl.maximumValue=3.21;
    //小球的颜色
    //sl.thumbTintColor=[UIColor whiteColor];
    
    [sl addTarget:self action:@selector(sliderMe:) forControlEvents:UIControlEventValueChanged];
    
    // 通常状态下
    [sl setThumbImage:[UIImage imageNamed:@"太阳"] forState:UIControlStateNormal];
    
    // 滑动状态下
    [sl setThumbImage:[UIImage imageNamed:@"花"] forState:UIControlStateHighlighted];
    
    [sl addTarget:self action:@selector(change:) forControlEvents:UIControlEventValueChanged];
    
    
    
    
    
    
    
    
    
    
    UIButton *xunhuan=[UIButton buttonWithType:UIButtonTypeCustom];
    xunhuan.backgroundColor=[UIColor clearColor];
    [self.view addSubview:xunhuan];
    
    //按钮指定位置和大小
    xunhuan.frame=CGRectMake(20 , 610, 32, 32);
    //背景图片
    
    //创建一张图片
    UIImage *image3=[UIImage imageNamed:@"循环"];
    [xunhuan setImage:image3 forState:UIControlStateNormal];
    
    
    
    UIButton *button1=[UIButton buttonWithType:UIButtonTypeCustom];
    button1.backgroundColor=[UIColor clearColor];
    [self.view addSubview:button1];
    
    //按钮指定位置和大小
    button1.frame=CGRectMake(83 , 605, 37, 37);
    //背景图片
    
    //创建一张图片
    UIImage *image1=[UIImage imageNamed:@"上一首"];
    [button1 setImage:image1 forState:UIControlStateNormal];
    
    UIButton *button2=[UIButton buttonWithType:UIButtonTypeCustom];
    button2.backgroundColor=[UIColor clearColor];
    [self.view addSubview:button2];
    
    //按钮指定位置和大小
    button2.frame=CGRectMake(160 , 600, 50, 50);
    //背景图片
    
    //创建一张图片
    UIImage *image2=[UIImage imageNamed:@"暂停"];
    [button2 setImage:image2 forState:UIControlStateNormal];

    
    
    UIButton *button3=[UIButton buttonWithType:UIButtonTypeCustom];
    button3.backgroundColor=[UIColor clearColor];
    [self.view addSubview:button3];
    
    //按钮指定位置和大小
    button3.frame=CGRectMake(250 , 605, 37, 37);
    //背景图片
    
    //创建一张图片
    UIImage *image4=[UIImage imageNamed:@"下一首"];
    [button3 setImage:image4 forState:UIControlStateNormal];

    
    
    
    
    
    
    
    CATransition *animation = [CATransition animation];
    animation.delegate = self;
    animation.duration = 0.5f;
    animation.timingFunction = UIViewAnimationCurveEaseInOut;
    animation.fillMode = kCAFillModeRemoved;
    animation.removedOnCompletion = NO;
    animation.type = @"cube";
    [[UIApplication sharedApplication].keyWindow.layer addAnimation:animation forKey:@"animationID"];
    
    
    
//    UIImage *image5=[UIImage imageNamed:@"下一首"];
//    CAKeyframeAnimation *path=[CAKeyframeAnimation animationWithKeyPath:@"position"];
//    //矩形的中心就是圆心
//    CGRect rect=CGRectMake(10, 20, 400, 300);
//    path.duration=5;
//    //绕此圆中心转
//    path.path=CFAutorelease(CGPathCreateWithEllipseInRect(rect, NULL));
//    path.calculationMode=kCAAnimationPaced;
//    path.rotationMode=kCAAnimationRotateAuto;
//    [.layer addAnimation:path forKey:@"round"];
    
    
    UIButton *gengduo=[UIButton buttonWithType:UIButtonTypeCustom];
    gengduo.backgroundColor=[UIColor clearColor];
    [self.view addSubview:gengduo];
    
    //按钮指定位置和大小
    gengduo.frame=CGRectMake(320 , 610, 30, 30);
    //背景图片
    
    //创建一张图片
    UIImage *imageg=[UIImage imageNamed:@"列表-2"];
    [gengduo setImage:imageg forState:UIControlStateNormal];
    
    
    UIButton *button4=[UIButton buttonWithType:UIButtonTypeCustom];
    button4.backgroundColor=[UIColor clearColor];
    [self.view addSubview:button4];
    
    //按钮指定位置和大小
    button4.frame=CGRectMake(50 , 520, 20, 20);
    //背景图片
    
    //创建一张图片
    UIImage *image5=[UIImage imageNamed:@"喜欢"];
    [button4 setImage:image5 forState:UIControlStateNormal];
    

    UIButton *button5=[UIButton buttonWithType:UIButtonTypeCustom];
    button5.backgroundColor=[UIColor clearColor];
    [self.view addSubview:button5];
    
    //按钮指定位置和大小
    button5.frame=CGRectMake(130 , 520, 22, 22);
    //背景图片
    
    //创建一张图片
    UIImage *image6=[UIImage imageNamed:@"下载"];
    [button5 setImage:image6 forState:UIControlStateNormal];
    
    UIButton *button6=[UIButton buttonWithType:UIButtonTypeCustom];
    button6.backgroundColor=[UIColor clearColor];
    [self.view addSubview:button6];
    
    //按钮指定位置和大小
    button6.frame=CGRectMake(210 , 520, 22, 22);
    //背景图片
    
    //创建一张图片
    UIImage *image7=[UIImage imageNamed:@"消息-3"];
    [button6 setImage:image7 forState:UIControlStateNormal];
    

    UIButton *button7=[UIButton buttonWithType:UIButtonTypeCustom];
    button7.backgroundColor=[UIColor clearColor];
    [self.view addSubview:button7];
    
    //按钮指定位置和大小
    button7.frame=CGRectMake(290 , 520, 25, 25);
    //背景图片
    
    //创建一张图片
    UIImage *image8=[UIImage imageNamed:@"更多"];
    [button7 setImage:image8 forState:UIControlStateNormal];
    
    UIButton *button8=[UIButton buttonWithType:UIButtonTypeCustom];
    button8.backgroundColor=[UIColor clearColor];
    [self.view addSubview:button8];
    
    //按钮指定位置和大小
    button8.frame=CGRectMake(0 , 64, 375, 450);
    //背景图片
    
    //创建一张图片
    UIImage *image9=[UIImage imageNamed:@"ts2.jpg"];
    [button8 setImage:image9 forState:UIControlStateNormal];

//    UIWebView *web=[[UIWebView alloc]initWithFrame:CGRectMake(0 , 64, 300, 350)];
//    //读取素材数据
//    NSData *gifData=[NSData dataWithContentsOfFile:[[NSBundle mainBundle]pathForResource:@"666" ofType:@"gif"]];
//    [web loadData:gifData MIMEType:@"image/gif" textEncodingName:nil baseURL:nil];
//    [self.view addSubview:web];
    _l=[[UILabel alloc]initWithFrame:CGRectMake(2, 570, 40, 10)];
    [self.view addSubview:_l];
    _l.textColor=[UIColor lightGrayColor];
    //文字大小
    _l.font=[UIFont systemFontOfSize:10];//参数为多少号字
    _l2=[[UILabel alloc]initWithFrame:CGRectMake(340, 570, 40, 10)];
    [self.view addSubview:_l2];
    
    _l2.textColor=[UIColor lightGrayColor];
    //文字大小
    _l2.font=[UIFont systemFontOfSize:10];//参数为多少号字

    
    
    
}
//滑动滑块的时候调用的方法

-(void)change:(UISlider *)slider
{
    NSString *s=[NSString stringWithFormat:@"%.2f",slider.value];
    
    _l.text=s;
        //slider.continuous=NO;
    
    
    
    
    NSString *s2=[NSString stringWithFormat:@"%.2f",3.21-slider.value];
    _l2.text=s2;
    
    
}






-(void)sliderMe:(UISlider *)s
{
    NSLog(@"%f",s.value);
}


-(void)goBack
{
    [self.navigationController popViewControllerAnimated:YES];
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
