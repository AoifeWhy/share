//
//  TheirTableViewCell.m
//  自定义cell
//
//  Created by 申丝露 on 2017/7/22.
//  Copyright © 2017年 申丝露. All rights reserved.
//

#import "TheirTableViewCell.h"

@implementation TheirTableViewCell

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
        
        
        
        self.button9=[[UIButton alloc]init];
        [self.contentView addSubview:self.button9];
        
        
        self.lable2=[[UILabel alloc]init];
        [self.contentView addSubview:self.lable2];
        
        
//        self.button10=[[UIButton alloc]init];
//        [self.contentView addSubview:self.button10];
        
        self.web=[[UIWebView alloc]init];
        [self.contentView addSubview:self.web];
        
        
        
        self.lable4=[[UILabel alloc]init];
        [self.contentView addSubview:self.lable4];
        
        
        self.lable1=[[UILabel alloc]init];
        [self.contentView addSubview:self.lable1];
//        self.image1=[[UIImage alloc]init];
//        [self.contentView addSubview:self.image1];
        self.lable3=[[UILabel alloc]init];
        [self.contentView addSubview:self.lable3];
                
    }
    
    
    
    
    return self;
}


//第三步  设置控件的信息

-(void)layoutSubviews
{
    [super layoutSubviews];
    self.button1.frame=CGRectMake(10, 10, 40, 40);
    self.button2.frame=CGRectMake(53, 10, 70, 17);
    self.button3.frame=CGRectMake(60, 270, 16, 16 );
    self.button4.frame=CGRectMake(150, 270, 20, 20);
    self.button5.frame=CGRectMake(240, 270, 18, 18);
    self.button6.frame=CGRectMake(80, 270, 40, 20 );
    self.button7.frame=CGRectMake(170, 270, 40, 20);
    self.button8.frame=CGRectMake(260, 270, 40, 20);
    self.lable4.frame=CGRectMake(40, 255, 200, 10);
    self.button9.frame=CGRectMake(320, 13, 40, 45);
    self.lable2.frame=CGRectMake(40, 50, 250, 50);
    //self.button10.frame=CGRectMake(40, 95, 280, 155);
    self.lable4.frame=CGRectMake(40, 255, 200, 10);
    self.lable1.frame=CGRectMake(53, 27, 70, 17);
    self.lable3.frame=CGRectMake(125, 10, 70, 17);
    self.web.frame=CGRectMake(40, 95, 280, 155);

    
    self.button1.backgroundColor=[UIColor redColor];
    [self.button1.layer setMasksToBounds:YES];
    [self.button1.layer setCornerRadius:20.0]; //设置矩形四个圆角半径
    

    self.button2.backgroundColor=[UIColor clearColor];
    self.button3.backgroundColor=[UIColor clearColor];
    self.button4.backgroundColor=[UIColor clearColor];
    self.button5.backgroundColor=[UIColor clearColor];
    self.button6.backgroundColor=[UIColor clearColor];
    self.button7.backgroundColor=[UIColor clearColor];
    self.button8.backgroundColor=[UIColor clearColor];
    

    self.lable1.backgroundColor=[UIColor clearColor];
    self.lable3.backgroundColor=[UIColor clearColor];
    

    self.button9.backgroundColor=[UIColor clearColor];
    self.lable2.backgroundColor=[UIColor clearColor];
    //self.button10.backgroundColor=[UIColor clearColor];
    self.web.backgroundColor=[UIColor yellowColor];
    self.lable4.backgroundColor=[UIColor clearColor];
    
//    [self.button1 addTarget:self action:@selector(youTouchMe) forControlEvents:UIControlEventTouchUpInside];
//    [self.button2 addTarget:self action:@selector(youTouchMe) forControlEvents:UIControlEventTouchUpInside];
    [self.button3 addTarget:self action:@selector(dianzan) forControlEvents:UIControlEventTouchUpInside];
    

    
}


-(void)dianzan
{
    UIButton *buttond=[[UIButton alloc]init];
    buttond.frame=CGRectMake(60, 270, 16, 16 );
    UIImage *image3=[UIImage imageNamed:@"点赞-2"];//如果图片格式是png，不用写图片格式，如果是jpg,一定要写图片格式
    [buttond setImage:image3 forState:UIControlStateNormal];
    UIButton *buttond2=[[UIButton alloc]init];
    buttond2.frame=CGRectMake(80, 270, 40, 20 );
    [buttond2 setTitle:@"2876" forState:UIControlStateNormal];
    [buttond2 setTitleColor:[UIColor grayColor]forState:UIControlStateNormal];
    buttond2.titleLabel.font = [UIFont systemFontOfSize: 13.0];
    
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
