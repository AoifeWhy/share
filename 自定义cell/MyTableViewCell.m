//
//  MyTableViewCell.m
//  自定义cell
//
//  Created by 申丝露 on 2017/7/18.
//  Copyright © 2017年 申丝露. All rights reserved.
//

#import "MyTableViewCell.h"

@implementation MyTableViewCell


//重写初始化方法

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self=[super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if(self)
    {
        //在初始化方法中完成控件的初始化
        self.musicIcon = [[UIImageView alloc]init];
        [self.contentView addSubview:self.musicIcon];
        
        self.musicName=[[UILabel alloc]init];
        [self.contentView addSubview:self.musicName];
        
        self.musicImage=[[UIImageView alloc]init];
        [self.contentView addSubview:self.musicImage];
        
    }
    return self;
}


//设置控件的信息
-(void)layoutSubviews
{
    [super layoutSubviews];
    self.musicIcon.frame=CGRectMake(10, 10, 20, 20);
    self.musicName.frame=CGRectMake(70, 10, 200, 20);
    self.musicImage.frame=CGRectMake(315, 10, 20, 20);
    
    self.musicImage.backgroundColor=[UIColor clearColor];
    self.musicIcon.backgroundColor=[UIColor clearColor];
    self.musicName.backgroundColor=[UIColor clearColor];
    



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
