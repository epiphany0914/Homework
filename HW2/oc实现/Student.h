#import <Foundation/Foundation.h>

@interface Student : NSObject{
    @public
    NSString *name;
    NSString *major;
    NSUInteger age;
}
-(void)studyTime:(float)time;

@end