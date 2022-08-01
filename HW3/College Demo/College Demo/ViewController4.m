//
//  ViewController4.m
//  College Demo
//
//  Created by Adm on 2022/7/30.
//

#import "ViewController4.h"

@interface ViewController4 ()

@end

@implementation ViewController4

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor systemGreenColor];
    self.title=@"检票";
    self.lb = [[UILabel alloc]init];
    self.lb.frame=CGRectMake(self.view.frame.size.width/2-150, 160, 300, 400);
    self.lb.backgroundColor=[UIColor whiteColor];
    self.lb.layer.masksToBounds=YES;
    self.lb.layer.cornerRadius=20;
    self.lb.text=@"检票的二维码";
    self.lb.textAlignment=NSTextAlignmentCenter;
    self.lb.font=[UIFont systemFontOfSize:24];
    [self.view addSubview:self.lb];
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
