//
//  AppDelegate.m
//  自定义cell
//
//  Created by 申丝露 on 2017/7/18.
//  Copyright © 2017年 申丝露. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"
#import "faxianViewController.h"
#import "wodeViewController.h"
#import "pengyouViewController.h"
#import "zhanghaoViewController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    self.window = [[UIWindow alloc]initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height)];
    
    [self.window makeKeyAndVisible];
    
    self.window.backgroundColor=[UIColor whiteColor];
    
    
    ViewController *root=[[ViewController alloc]init];
    
    UINavigationController *nav=[[UINavigationController alloc]initWithRootViewController:root];
    //把导航控制器作为window的根视图
    //self.window.rootViewController=nav;
    //设置导航栏的颜色
    nav.navigationBar.barTintColor=[UIColor redColor];
    //设置导航栏的透明度
    nav.navigationBar.translucent=YES;
    //NSLog(@"%@",self.window);
    
    //=======================================================
    
    //发现页面
    faxianViewController *faXian=[[faxianViewController alloc]init];
    
    UINavigationController *faNav=[[UINavigationController alloc]initWithRootViewController:faXian];
    //发现音乐设置标题
    faNav.tabBarItem.title=@"发现音乐";
    //设置未选中的照片
    faNav.tabBarItem.image=[UIImage imageNamed:@"网易云"];
    //设置选中的照片
    faNav.tabBarItem.selectedImage=[UIImage imageNamed:@"网易云-3"];
    
    //防止图片被渲染
    //
    faNav.tabBarItem.selectedImage = [faNav.tabBarItem.selectedImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];

    // 选中时图片
//    faNav.tabBarItem.selectedImage = [[UIImage imageNamed:@"网易云"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    faNav.tabBarItem.selectedImage = [faNav.tabBarItem.selectedImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    
    NSMutableDictionary *atts1=[NSMutableDictionary dictionary];
    atts1[NSFontAttributeName]=[UIFont systemFontOfSize:12];
    // 更改文字颜色
    atts1[NSForegroundColorAttributeName]=[UIColor darkGrayColor];
    NSMutableDictionary *selectedAtts1=[NSMutableDictionary dictionary];
    selectedAtts1[NSFontAttributeName]=[UIFont systemFontOfSize:12];
    selectedAtts1[NSForegroundColorAttributeName]=[UIColor whiteColor];
    [faNav.tabBarItem setTitleTextAttributes:selectedAtts1 forState:UIControlStateSelected];
    
    
    //---------------------------------------------------------------
    
    
    //我的页面
    wodeViewController *woDe=[[wodeViewController alloc]init];
    
    UINavigationController *woNav=[[UINavigationController alloc]initWithRootViewController:woDe];
    
    //我的音乐设置标题
    woNav.tabBarItem.title=@"我的音乐";
    //设置未选中的照片
    woNav.tabBarItem.image=[UIImage imageNamed:@"102"];
    //设置选中的照片
    woNav.tabBarItem.selectedImage=[UIImage imageNamed:@"音乐-4"];
    
    woNav.tabBarItem.selectedImage = [woNav.tabBarItem.selectedImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    
    //NSMutableDictionary *atts1=[NSMutableDictionary dictionary];
    atts1[NSFontAttributeName]=[UIFont systemFontOfSize:12];
    // 更改文字颜色
    atts1[NSForegroundColorAttributeName]=[UIColor darkGrayColor];
    //NSMutableDictionary *selectedAtts1=[NSMutableDictionary dictionary];
    selectedAtts1[NSFontAttributeName]=[UIFont systemFontOfSize:12];
    selectedAtts1[NSForegroundColorAttributeName]=[UIColor whiteColor];
    [woNav.tabBarItem setTitleTextAttributes:selectedAtts1 forState:UIControlStateSelected];
    
    
    //--------------------------------------------------------------
    //朋友页面
    pengyouViewController *pengYou=[[pengyouViewController alloc]init];
    
    UINavigationController *pengNav=[[UINavigationController alloc]initWithRootViewController:pengYou];
    
    //朋友设置标题
    pengNav.tabBarItem.title=@"朋友";
    [pengNav.tabBarItem.image imageWithRenderingMode:UIImageRenderingModeAutomatic];
    //pengNav.tabBarItem.selectedImage=[UIImage imageNamed:@"朋友123.png"];
    //设置未选中的照片
    pengNav.tabBarItem.image=[UIImage imageNamed:@"朋友"];
    //设置选中的照片
    [[pengNav.tabBarItem accessibilityElementAtIndex:1] setBackgroundColor:[UIColor whiteColor]];
    pengNav.tabBarItem.selectedImage=[UIImage imageNamed:@"朋友-3"];
    
    
    pengNav.tabBarItem.selectedImage = [pengNav.tabBarItem.selectedImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    //更改文字颜色
    //NSMutableDictionary *atts1=[NSMutableDictionary dictionary];
    atts1[NSFontAttributeName]=[UIFont systemFontOfSize:12];
    // 更改文字颜色
    atts1[NSForegroundColorAttributeName]=[UIColor darkGrayColor];
    //NSMutableDictionary *selectedAtts1=[NSMutableDictionary dictionary];
    selectedAtts1[NSFontAttributeName]=[UIFont systemFontOfSize:12];
    selectedAtts1[NSForegroundColorAttributeName]=[UIColor whiteColor];
    [pengNav.tabBarItem setTitleTextAttributes:selectedAtts1 forState:UIControlStateSelected];
    
    //--------------------------------------------------------------
    
    
    //账号页面
    zhanghaoViewController *zhangHao=[[zhanghaoViewController alloc]init];
    
    UINavigationController *zhangNav=[[UINavigationController alloc]initWithRootViewController:zhangHao];
    
    
    UITabBarController *tabbaeC=[[UITabBarController alloc]init];

    
    //账号设置标题
    zhangNav.tabBarItem.title=@"账号";
    //设置未选中的照片
    zhangNav.tabBarItem.image=[UIImage imageNamed:@"账号-3"];
    //设置选中的照片
    zhangNav.tabBarItem.selectedImage=[UIImage imageNamed:@"账号-4"];
    
    
    
    zhangNav.tabBarItem.selectedImage = [zhangNav.tabBarItem.selectedImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    
    //NSMutableDictionary *atts1=[NSMutableDictionary dictionary];
    
    zhangNav.tabBarItem.badgeValue=@"12";
    
    
    atts1[NSFontAttributeName]=[UIFont systemFontOfSize:12];
    // 更改文字颜色
    atts1[NSForegroundColorAttributeName]=[UIColor darkGrayColor];
    //NSMutableDictionary *selectedAtts1=[NSMutableDictionary dictionary];
    selectedAtts1[NSFontAttributeName]=[UIFont systemFontOfSize:12];
    selectedAtts1[NSForegroundColorAttributeName]=[UIColor whiteColor];
    [zhangNav.tabBarItem setTitleTextAttributes:selectedAtts1 forState:UIControlStateSelected];
    
    
    
    //---------------------------------------------------------------
    
    
    
    
    //把页面放到tabbarController中去
    //tabbaeC.viewControllers=[NSArray arrayWithObjects:faNav,woNav,pengNav,zhangNav, nil];
    tabbaeC.viewControllers=@[faNav,woNav,pengNav,zhangNav];
    //把tabbarController作为window的根视图
    self.window.rootViewController=tabbaeC;
    
     //woNav.view.backgroundColor=[UIColor darkGrayColor];
    
    
    [[UITabBar appearance] setBarTintColor:[UIColor blackColor]];
    
    //统一设置导航栏的样式
    [[UINavigationBar appearance]setBarTintColor:[UIColor redColor]];
    [[UINavigationBar appearance]setTranslucent:YES];
    
    
    
    
    
//    WxViewController *Wx = [[WxViewController alloc] init];
//    UINavigationController *WxNav = [[UINavigationController alloc] initWithRootViewController:Wx];
//    WxNav.tabBarItem.title = @"微信";
//    WxNav.tabBarItem.image = [UIImage imageNamed:@"微信"];
//    WxNav.tabBarItem.selectedImage = [UIImage imageNamed:@"微信-1"];
//    WxNav.tabBarItem.selectedImage = [WxNav.tabBarItem.selectedImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
//    NSMutableDictionary *atts1=[NSMutableDictionary dictionary];
//    // 更改文字大小
//    atts1[NSFontAttributeName]=[UIFont systemFontOfSize:12];
//    // 更改文字颜色
//    atts1[NSForegroundColorAttributeName]=[UIColor darkGrayColor];
//    NSMutableDictionary *selectedAtts1=[NSMutableDictionary dictionary];
//    selectedAtts1[NSFontAttributeName]=[UIFont systemFontOfSize:12];
//    selectedAtts1[NSForegroundColorAttributeName]=[UIColor greenColor];
//    [WxNav.tabBarItem setTitleTextAttributes:selectedAtts1 forState:UIControlStateSelected];
//    
    
    
    
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
