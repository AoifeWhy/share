//
//  BallView.m
//  自定义cell
//
//  Created by 申丝露 on 2017/7/18.
//  Copyright © 2017年 申丝露. All rights reserved.
//

#import "BallView.h"

@implementation BallView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    //在这个方法里面获取起点
    //获取触摸对象
    UITouch *touch=[touches anyObject];
    self.startPoint=[touch locationInView:self];
}

-(void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    //在这里面让小球动起来
    //获取触摸对象
    UITouch *touch =[touches anyObject];
    //获取移动中的点
    CGPoint newPoint =[touch locationInView:self];
    //计算X Y坐标分别移动了多少
    CGFloat dx=newPoint.x-self.startPoint.x;
    CGFloat dy=newPoint.y-self.startPoint.y;
    //改变小球的位置
    self.center=CGPointMake(self.center.x+dx, self.center.y+dy);
}

//一般不用
-(void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    //在这里让小球停下来
}


@end
