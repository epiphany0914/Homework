//
//  ViewController2.m
//  College Demo
//
//  Created by Adm on 2022/7/29.
//

#import "ViewController2.h"

@interface ViewController2 ()

@end

@implementation ViewController2

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor systemBlueColor];
    self.title=@"用户信息";
    UILabel* _lb=[[UILabel alloc]init];
    _lb.text=@"\n";
    //姓名 身份证号 出生日期 父亲 母亲 居住地
    NSString* name = self.pe.name?self.pe.name:@"未提供";
    _lb.text=[_lb.text stringByAppendingFormat:@"\t姓名\t\t\t%@\n",name];
    NSString* iden = self.pe.idNumber?[[NSString alloc]initWithFormat:@"%@",self.pe.idNumber]:@"未提供";
    _lb.text=[_lb.text stringByAppendingFormat:@"\t身份证号\t%@\n",iden];
    NSString* addr = self.pe.address.city?self.pe.address.city:@"未提供";
    _lb.text=[_lb.text stringByAppendingFormat:@"\t居住地\t\t%@\n",addr];
    
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"yyyy-MM-dd"];//setDateFormat必须一致
    NSString* birt = self.pe.birthday?[[NSString alloc]initWithFormat:@"%@",[dateFormatter stringFromDate: self.pe.birthday]]:@"未提供";
    _lb.text=[_lb.text stringByAppendingFormat:@"\t出生日期\t%@\n",birt];
    
    NSString* fath = self.pe.father?[[NSString alloc]initWithFormat:@"%@",self.pe.father.name]:@"未提供";
    _lb.text=[_lb.text stringByAppendingFormat:@"\t父亲\t\t\t%@\n",fath];
    NSString* moth = self.pe.mother?[[NSString alloc]initWithFormat:@"%@",self.pe.mother.name]:@"未提供";
    _lb.text=[_lb.text stringByAppendingFormat:@"\t母亲\t\t\t%@\n",moth];
    _lb.text=[_lb.text stringByAppendingFormat:@"\n\n\n\n",moth];
    _lb.backgroundColor=[UIColor whiteColor];
    _lb.numberOfLines=-1;
    _lb.textAlignment=NSTextAlignmentLeft;
    _lb.textColor=[UIColor blackColor];
    _lb.font=[UIFont systemFontOfSize:24.0];
    [_lb setValue:@(36) forKey:@"lineSpacing"];
    _lb.frame=CGRectMake(self.view.frame.size.width/2-150, 120, 300, 400);
    _lb.layer.masksToBounds=YES;
    _lb.layer.cornerRadius=20;
    [self.view addSubview:_lb];
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
