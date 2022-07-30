//
//  Passenger.h
//  College Demo
//
//  Created by mashujun on 2022/7/18.
//

#import "Person.h"

NS_ASSUME_NONNULL_BEGIN

@interface Orders : NSObject

@property (nonatomic, assign) BOOL used;//used 1 ,not used 0
@property (nonatomic, copy) NSString *origin;
@property (nonatomic, copy) NSString *destination;

- (instancetype)initWithOrigin:(NSString *)origin destination:(NSString *)destination;
- (void)cheak;//检票 把used赋值为1

@end

@interface Passenger : Person
// @property 属性
// 是否年满 18 岁
@property (nonatomic,assign,readonly) BOOL adult;//age>=18,adult=1
// 历史订单 （数组）
@property (nonatomic,strong) NSMutableArray *history_order;
// 未出行订单 （数组）
@property (nonatomic,strong) NSMutableArray *unused_order;
// Function 方法

//一个初始化的方法
- (instancetype)initWithName:(NSString *)name address:(Address *)address birthday:(NSDate *)birthday;
// 去订票

- (void)reserve_order:(Orders *)order;

// 去检票
- (void)check_order:(Orders *)order;
@end

NS_ASSUME_NONNULL_END
