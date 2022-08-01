//
//  Passenger.h
//  College Demo
//
//  Created by mashujun on 2022/7/18.
//

#import "Person.h"

NS_ASSUME_NONNULL_BEGIN

@interface Orders : NSObject
@property (nonatomic, strong) Address *from;
@property (nonatomic, strong) Address *to;
@property (nonatomic, assign) NSInteger orderId;
-(instancetype)initWithFrom:(NSString*)src To:(NSString*) tar;
@end

@interface Passenger : Person
@property (nonatomic, assign) NSInteger ticketNum;
@property (nonatomic, assign) BOOL isAdult;
@property (nonatomic, strong) NSMutableArray *finishedOrder;
@property (nonatomic, strong) NSMutableArray *UntravelledOrder;
-(NSInteger)addOrderFrom:(NSString*)src To:(NSString*)tar;
-(BOOL)checkTicket:(NSInteger)orderId;
// @property 属性
// 是否年满 18 岁
// 历史订单 （数组）
// 未出行订单 （数组）

// Function 方法
// 去订票

// 去检票
@end

NS_ASSUME_NONNULL_END
