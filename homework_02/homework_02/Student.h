//
//  Student.h
//  homework_02
//
//  Created by 王子俊 on 2022/7/19.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Student : NSObject
{
    @public
    NSString*name;
    NSString*major;
    int age;
}
-(void)study:(double)time;
@end

NS_ASSUME_NONNULL_END
