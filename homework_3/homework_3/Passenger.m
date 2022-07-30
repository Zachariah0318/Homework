//
//  Passenger.m
//  College Demo
//
//  Created by mashujun on 2022/7/18.
//

#import "Passenger.h"


@implementation Orders

- (instancetype)initWithOrigin:(NSString *)origin destination:(NSString *)destination
{
    if (self = [super init]) {
        self.origin=origin;
        self.destination=destination;
        self.used=0;
    }
    return self;
}

- (void)cheak
{
    self.used=1;
}

- (NSString *)description//重写一下
{
    return [NSString stringWithFormat:@"orgin: %@    destination: %@",self.origin,self.destination];
}

@end

@implementation Passenger

- (BOOL)adult {
   if(self.age>=18)
       return 1;
    
    return 0;
}

- (instancetype)initWithName:(NSString *)name address:(Address *)address birthday:(NSDate *)birthday
{
    if (self = [super initWithName:name address:address birthday:birthday]) {
        self.history_order=[NSMutableArray new];
        self.unused_order=[NSMutableArray new];
    }
    return self;
}

- (void)reserve_order:(Orders *)order
{
    NSLog(@"%@ ticket book was successful.",order);//预定时把票添加到未出行订单数组当中
    [self.unused_order addObject:order];
}

- (void)check_order:(Orders *)order
{
    if([self.unused_order containsObject:order])//先检测乘客是否买了这个票
    {
        NSLog(@"%@ ticket check-in was successful",order);
        
        [self.unused_order removeObject:order];//从未出行删去
        
        [self.history_order addObject:order];//加到历史订单
        [[self.history_order lastObject] cheak];//把票给剪了
    }
    
    else
    {
        NSLog(@"Sorry, Ticket check-in was not successful");//如果没有票，就检票失败
    }
}

@end
 
