//
//  Student.m
//  homework_2
//
//  Created by 王子俊 on 2022/7/28.
//

#import "Student.h"

@implementation Student

- (instancetype)initWithName:(NSString *)name andMajor:(NSString *)major andAge:(int)age
{
    if (self = [super init])
    {
        self.name=name;
        self.major=major;
        self.age=age;
    }
    return self;
}

- (void)study:(double)time
{
    NSLog(@"I'm %@ and I have learned %.2f hour(s).",_name,time);
}

@end
