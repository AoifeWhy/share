//
//  YourTableViewCell.m
//  自定义cell
//
//  Created by 申丝露 on 2017/7/21.
//  Copyright © 2017年 申丝露. All rights reserved.
//

#import "YourTableViewCell.h"

@implementation YourTableViewCell


//重写初始化方法
-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self=[super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        //在初始化方法中完成初始化
        self.button1=[[UIButton alloc]init];
        
        //在cell上加控件，contentView是cell上的一个容器
        [self.contentView addSubview:self.button1];
        
        self.button2=[[UIButton alloc]init];
        
        //在cell上加控件，contentView是cell上的一个容器
        [self.contentView addSubview:self.button2];

        
        self.button3=[[UIButton alloc]init];
        
        //在cell上加控件，contentView是cell上的一个容器
        [self.contentView addSubview:self.button3];

        
        self.button4=[[UIButton alloc]init];
        
        //在cell上加控件，contentView是cell上的一个容器
        [self.contentView addSubview:self.button4];

        
        self.button5=[[UIButton alloc]init];
        
        //在cell上加控件，contentView是cell上的一个容器
        [self.contentView addSubview:self.button5];

        
        self.button6=[[UIButton alloc]init];
        
        //在cell上加控件，contentView是cell上的一个容器
        [self.contentView addSubview:self.button6];

        
        
        
        self.button7=[[UIButton alloc]init];
        
        //在cell上加控件，contentView是cell上的一个容器
        [self.contentView addSubview:self.button7];
        
        
        self.button8=[[UIButton alloc]init];
        
        //在cell上加控件，contentView是cell上的一个容器
        [self.contentView addSubview:self.button8];
        
    }
    
    
    
    
    return self;
}


//第三步  设置控件的信息

 -(void)layoutSubviews
{
    [super layoutSubviews];
    self.button1.frame=CGRectMake(0, 40, 121, 144);
    self.button2.frame=CGRectMake(126, 40, 121, 144);
    self.button3.frame=CGRectMake(254, 40, 121, 144);
    self.button4.frame=CGRectMake(0, 186, 121, 144);
    self.button5.frame=CGRectMake(126, 186, 121, 144);
    self.button6.frame=CGRectMake(252, 186, 121, 144);
    self.button7.frame=CGRectMake(0, 10, 5, 20);
    self.button8.frame=CGRectMake(10, 10, 120, 20);
    
    
    
    self.button1.backgroundColor=[UIColor redColor];
    self.button2.backgroundColor=[UIColor yellowColor];
    self.button3.backgroundColor=[UIColor greenColor];
    self.button4.backgroundColor=[UIColor grayColor];
    self.button5.backgroundColor=[UIColor blackColor];
    self.button6.backgroundColor=[UIColor orangeColor];
    self.button7.backgroundColor=[UIColor redColor];
    self.button8.backgroundColor=[UIColor clearColor];


}



- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    
    
    
    
    
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
