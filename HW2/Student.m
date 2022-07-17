#import "Student.h"

@implementation Student
-(void)studyTime:(float)time{

    NSLog(@"年龄为%d，专业为%@的%@学习时间为%.1fh",age,major,name,time);
}

@end