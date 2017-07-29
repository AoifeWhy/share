//
//  MyTableViewCell.h
//  自定义cell
//
//  Created by 申丝露 on 2017/7/18.
//  Copyright © 2017年 申丝露. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyTableViewCell : UITableViewCell
//定义需要的属性（控件）
@property(nonatomic,strong)UIImageView *musicIcon;
@property(nonatomic,strong)UILabel *musicName;
@property(strong,nonatomic)UIImageView *musicImage;

@end
