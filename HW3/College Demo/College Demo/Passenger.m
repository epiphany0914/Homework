//
//  Passenger.m
//  College Demo
//
//  Created by mashujun on 2022/7/18.
//

#import "Passenger.h"


@implementation Orders
-(instancetype)initWithFrom:(NSString *)src To:(NSString *)tar{
    if(self=[super init]){
        self.from=[[Address alloc]initWithCityname:src];
        self.to=[[Address alloc]initWithCityname:tar];
    }
    return self;
}
@end

@implementation Passenger
-(NSInteger)addOrderFrom:(NSString *)src To:(NSString *)tar{
    if(!self.UntravelledOrder){
        self.UntravelledOrder = [[NSMutableArray alloc]init];
    }
    Orders* neworder=[[Orders alloc]initWithFrom:src To:tar];
    neworder.orderId = rand();
    [self.UntravelledOrder addObject:neworder];
    
    return neworder.orderId;
}
@end
