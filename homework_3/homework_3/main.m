//
//  main.m
//  homework_3
//
//  Created by 王子俊 on 2022/7/28.
//

#import <Foundation/Foundation.h>
#import "Passenger.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Address *address=[[Address alloc] initWith:@"China" province:@"Beijing" city:@"Beijing" detail:@"Dongcheng District"];//定义一个北京市东城区的位置
        
        NSDateFormatter *formater = [[NSDateFormatter alloc] init];
        [formater setDateFormat:@"yyyy-MM-dd h:mm:ss "];
        NSString*date=@"2003-03-18 3:15:00 ";
        NSDate *birthday=[formater dateFromString:date];//定义一个我的生日
        
        Orders *O1=[[Orders alloc] initWithOrigin:@"Beijing" destination:@"DaLian"], *O2=[[Orders alloc] initWithOrigin:@"DaLian" destination:@"Beijing"], *O3=[[Orders alloc] initWithOrigin:@"Beijing" destination:@"ShangHai"], *O4=[[Orders alloc] initWithOrigin:@"Beijing" destination:@"GuangZhou"], *O5=[[Orders alloc] initWithOrigin:@"Beijing" destination:@"ShenZhen"], *O6=[[Orders alloc] initWithOrigin:@"HangZhou" destination:@"ShenZhen"];//定义6个订单，前五个将被预定，最后一个不会被预定
        
        Passenger *p=[[Passenger alloc] initWithName:@"Zachariah" address:address birthday:birthday];//定义一个乘客
        
        [p reserve_order:O1];//把前五张票给预定了
        [p reserve_order:O2];
        [p reserve_order:O3];
        [p reserve_order:O4];
        [p reserve_order:O5];
        
        NSLog(@"\np.unused_order:\n%@",p.unused_order);//预定完就输出一次没用过的订单
        
        [p check_order:O1];//对Order_1检票，预期为成功，会把order的used赋值为yes

        [p check_order:O6];//对未预定的Order_1检票，预期为失败
        
        NSLog(@"\np.history_order\n%@",p.history_order);//乘车一次后输出用过的订单

        NSLog(@"\np.unused_order:\n%@",p.unused_order);//乘车后输出还剩余的订单

    }
    return 0;
}
