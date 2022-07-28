//
//  Student.h
//  homework_2
//
//  Created by 王子俊 on 2022/7/28.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Student : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *major;
@property (nonatomic, assign) int age;

- (instancetype)initWithName:(NSString *)name andMajor:(NSString *)major andAge:(int)age;
- (void)study:(double)time;
@end

NS_ASSUME_NONNULL_END
