//
//  myCell.m
//  College Demo
//
//  Created by Adm on 2022/7/29.
//

#import "myCell.h"
#import "ViewController2.h"
#import "ViewController3.h"
#import "ViewController4.h"
#import <UIKit/UIKit.h>
@interface myCell ()<UITableViewDelegate>
@end

@implementation myCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if(self=[super initWithStyle:style reuseIdentifier:reuseIdentifier]){
        //[self setupUI];
    }
    self.tbv=[[UITableView alloc]init];
    [self.contentView addSubview:self.tbv];
    //self.pa=[[Passenger alloc]init];
    return self;
}
-(void)setupUI{

    UIButton *b_personPage = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [b_personPage addTarget:self action:@selector(buttonAction) forControlEvents:UIControlEventTouchUpInside];
    b_personPage.frame=CGRectMake(self.father.view.frame.size.width/2-150, 110, 300, 180);
    b_personPage.backgroundColor = [UIColor systemBlueColor];
    b_personPage.layer.masksToBounds=YES;
    b_personPage.layer.cornerRadius=20;
    if(self.pa.name)
        [b_personPage setTitle:[[NSString alloc]initWithFormat:@"%@",self.pa.name] forState:UIControlStateNormal];
    [b_personPage setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    b_personPage.font=[UIFont systemFontOfSize:60];
    [self.contentView addSubview:b_personPage];
    
    self.lb = [[UILabel alloc]init];
    self.lb.frame=CGRectMake(self.father.view.frame.size.width/2-150, 320, 300, 400);
    self.lb.backgroundColor=[UIColor whiteColor];
    self.lb.layer.masksToBounds=YES;
    self.lb.layer.cornerRadius=20;
    self.lb.textAlignment = NSTextAlignmentCenter;
    self.lb.numberOfLines=-1;
    [self.contentView addSubview:self.lb];
    
    [self showLabel];
    
}
- (void)buttonAction{
    ViewController2 *vc=[[ViewController2 alloc]init];
    vc.pe=self.pa;
    //NSLog(@"hei");
    //NSLog(self.father.title);
    [self.father.navigationController pushViewController:vc animated:YES];
}
- (void)checkT{
    ViewController4 *vc=[[ViewController4 alloc]init];
    //NSLog(@"hei");
    //NSLog(self.father.title);
    [self.father.navigationController pushViewController:vc animated:YES];
}
-(void)orderT{
    ViewController3 *vc=[[ViewController3 alloc]init];
    [self.father.navigationController pushViewController:vc animated:YES];
    [self.pa addOrderFrom:@"沈阳" To:@"北京"];
    [self showLabel];
}
-(void)showLabel{
    if(!self.b1){
        self.b1=[[UIButton alloc]init];
        self.b1 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        [self.b1 addTarget:self action:@selector(orderT) forControlEvents:UIControlEventTouchUpInside];
        self.b1.frame=CGRectMake(self.father.view.frame.size.width/2-150, 750, 300, 60);
        self.b1.backgroundColor = [UIColor systemBlueColor];
        self.b1.layer.masksToBounds=YES;
        self.b1.layer.cornerRadius=20;
        [self.b1 setTitle:@"订票" forState:UIControlStateNormal];
        [self.b1 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        self.b1.font=[UIFont systemFontOfSize:24];
        [self.contentView addSubview:self.b1];
    }
    if(self.pa.UntravelledOrder.count==0){
        self.lb.text=@"无未出行订单\n";
        self.lb.textAlignment=NSTextAlignmentCenter;
        self.lb.font=[UIFont systemFontOfSize:36];
        self.lb.textColor=[UIColor colorWithRed:0.6 green:0.6 blue:0.6 alpha:0.6];
    }
    else{
        [self.lb setValue:@(18) forKey:@"lineSpacing"];
        self.lb.font=[UIFont systemFontOfSize:18];
        self.lb.textColor=[UIColor blackColor];
        self.lb.textAlignment = NSTextAlignmentLeft;
        if(self.pa.isAdult){
            self.lb.text=[[NSString alloc]initWithString:@"\t该乘客不能购买儿童票\n\n"];
        }
        else{
            self.lb.text=[[NSString alloc]initWithString:@"\t该乘客可以购买儿童票\n\n"];
        }
        self.lb.text=[self.lb.text stringByAppendingFormat:@"\t该乘客有%ld 个未出行订单\n\n\t订单号\t  出发地\t ->  \t目的地\n\t-------------------------------\n",self.pa.UntravelledOrder.count];
        for(int i=0;i<self.pa.UntravelledOrder.count;i++){
            Orders* od=[self.pa.UntravelledOrder objectAtIndex:i];
            self.lb.text=[self.lb.text stringByAppendingFormat:@"\t%04lx\t  %@站\t ->  \t%@站\n",od.orderId%(16*16*16*16),od.from.city,od.to.city];
            if(i<self.pa.UntravelledOrder.count-1)
                self.lb.text=[self.lb.text stringByAppendingString:@"\n"];
        }
        self.lb.text=[self.lb.text stringByAppendingString:@"\t-------------------------------\n"];
        self.b1.frame=CGRectMake(self.father.view.frame.size.width/2-150, 750, 140, 60);
        [self.contentView addSubview:self.b1];
        if(!self.b2){
            self.b2=[[UIButton alloc]init];
            self.b2 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
            [self.b2 addTarget:self action:@selector(checkT) forControlEvents:UIControlEventTouchUpInside];
            self.b2.frame=CGRectMake(self.father.view.frame.size.width/2+20, 750, 140, 60);
            self.b2.backgroundColor = [UIColor systemGreenColor];
            self.b2.layer.masksToBounds=YES;
            self.b2.layer.cornerRadius=20;
            [self.b2 setTitle:@"检票" forState:UIControlStateNormal];
            [self.b2 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
            self.b2.font=[UIFont systemFontOfSize:24];
            [self.contentView addSubview:self.b2];        }
    }
}
@end
