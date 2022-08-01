//
//  myCell.h
//  College Demo
//
//  Created by Adm on 2022/7/29.
//

#import <UIKit/UIKit.h>
#import "Passenger.h"
NS_ASSUME_NONNULL_BEGIN

@interface myCell : UITableViewCell
@property (nonatomic,strong) UIViewController* father;
@property (nonatomic,strong) UITableView *tbv;
@property (nonatomic,strong) UILabel *lb;
@property (nonatomic,strong) UIButton* b1;
@property (nonatomic,strong) UIButton* b2;
@property (nonatomic) Passenger* pa;
-(void)setupUI;
@end

NS_ASSUME_NONNULL_END
