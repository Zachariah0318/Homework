//
//  main.m
//  homework_2
//
//  Created by 王子俊 on 2022/7/28.
//

#import <Foundation/Foundation.h>
#import "Student.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Student *s=[[Student alloc] initWithName:@"Zachariah" andMajor:@"software engineering" andAge:19];
        
        [s study:10.5];
        
    }
    return 0;
}
