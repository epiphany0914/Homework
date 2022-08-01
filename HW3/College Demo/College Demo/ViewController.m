//
//  ViewController.m
//  College Demo
//
//  Created by mashujun on 2022/7/18.
//

#import "ViewController.h"
#import "ViewController2.h"
#import "myCell.h"
@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic,strong) UITableView *tbv;
@property (nonatomic,strong) UILabel *lb;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor systemPinkColor];
    // Do any additional setup after loading the view.
    self.title=@"出行信息";
    
    [self.view addSubview:self.tbv];
    [self.view addSubview:self.lb];
}


-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    //self.lb.hidden=!self.lb.hidden;
    [self.tbv deselectRowAtIndexPath:indexPath animated:NO];
    //ViewController2 *vc=[[ViewController2 alloc]init];
    //[self.navigationController pushViewController:vc animated:YES];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 20;
}
-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    myCell *cell=[tableView dequeueReusableCellWithIdentifier:@"key" forIndexPath:indexPath];
    CGFloat i=0.9-(indexPath.row%2==0?0.05:0);
    UIColor *c=[UIColor colorWithRed:i green:i blue:i alpha:1];
    cell.backgroundColor=c;
    cell.father=self;
    if(!cell.pa) cell.pa=[[Passenger alloc]init];
    if(indexPath.row==0){
        cell.pa.name=@"小侯";
        cell.pa.isAdult=YES;
        cell.pa.birthday=[[NSDate alloc]init];
        NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
        NSString *dateString = @"2000-01-01";
        [dateFormatter setDateFormat:@"yyyy-MM-dd"];//setDateFormat必须一致
        cell.pa.birthday=[dateFormatter dateFromString:dateString];
        cell.pa.address=[[Address alloc]init];
        cell.pa.address.city=@"沈阳";
    }
    if(indexPath.row==1){
        cell.pa.name=@"小张";
        cell.pa.isAdult=YES;
        cell.pa.birthday=[[NSDate alloc]init];
        NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
        NSString *dateString = @"1999-06-01";
        [dateFormatter setDateFormat:@"yyyy-MM-dd"];//setDateFormat必须一致
        cell.pa.birthday=[dateFormatter dateFromString:dateString];
        cell.pa.address=[[Address alloc]init];
        cell.pa.address.city=@"上海";
    }
    if(indexPath.row==2){
        cell.pa.name=@"小李";
        cell.pa.isAdult=NO;
        cell.pa.birthday=[[NSDate alloc]init];
        NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
        NSString *dateString = @"2007-09-01";
        [dateFormatter setDateFormat:@"yyyy-MM-dd"];//setDateFormat必须一致
        cell.pa.birthday=[dateFormatter dateFromString:dateString];
        cell.pa.address=[[Address alloc]init];
        cell.pa.address.city=@"合肥";
    }
    [cell setupUI];

    return cell;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return self.view.frame.size.height;
}


- (UITableView*)tbv{
    if(!_tbv){
        _tbv = [[UITableView alloc]initWithFrame:self.view.bounds];
        _tbv.backgroundColor = [UIColor whiteColor];
        _tbv.delegate=self;
        _tbv.dataSource=self;
        _tbv.pagingEnabled=YES;
        [_tbv registerClass:[myCell class] forCellReuseIdentifier:@"key"];
    }
    return _tbv;
}
- (UILabel*) lb{
    if(!_lb){
        _lb=[[UILabel alloc]init];
        _lb.text=@"Good";
        _lb.textColor=[UIColor blueColor];
        _lb.font=[UIFont systemFontOfSize:12.0];
        _lb.frame=CGRectMake(self.view.frame.size.width/2.0, self.view.frame.size.height/2.0, 100, 100);
        _lb.hidden=YES;
    }
    return _lb;
}
- (void)dateFromString:(NSString*)dateStr withFormat:(NSString*)format{

    

    NSDateFormatter *formater1 = [[NSDateFormatter alloc] init];

    [formater1 setTimeZone:[NSTimeZone timeZoneWithAbbreviation:@"UTC"]];//消除时差8小时

    [formater1 setLocale:[[NSLocale alloc] initWithLocaleIdentifier:@"en_US_POSIX"]];//date返回不为空

    [formater1 setDateFormat:format];

    NSDate *date1 = [formater1 dateFromString:dateStr];

    NSLog(@"date1======%@",date1);

}
@end
