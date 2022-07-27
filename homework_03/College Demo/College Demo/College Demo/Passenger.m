//
//  Passenger.m
//  College Demo
//
//  Created by mashujun on 2022/7/18.
//

#import "Passenger.h"


@implementation Orders

@end

@implementation Passenger
- (void)reserve
{
    [_not_used insertObject:[Orders new] atIndex:_cnt_n++];
}

- (void)ticket
{
    [_history insertObject:_not_used[_cnt_n--] atIndex:_cnt_h++];
}
@end
	
