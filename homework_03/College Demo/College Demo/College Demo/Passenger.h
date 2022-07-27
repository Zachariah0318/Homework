//
//  Passenger.h
//  College Demo
//
//  Created by mashujun on 2022/7/18.
//

#import "Person.h"

NS_ASSUME_NONNULL_BEGIN

@interface Orders : NSObject
{
    BOOL used;
}
@end

@interface Passenger : Person
// @property 属性
@property (nonatomic, assign) NSInteger cnt_h,cnt_n;
@property (nonatomic, assign, readonly) BOOL adult;
@property (nonatomic, strong) NSMutableArray *history;
@property (nonatomic, strong) NSMutableArray *not_used;
// 是否年满 18 岁
// 历史订单 （数组）
// 未出行订单 （数组）

// Function 方法
// 去订票
- (void)reserve;
// 去检票

- (void)ticket;
@end

NS_ASSUME_NONNULL_END
